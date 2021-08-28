#lang racket
(require "../../support/picture/segment-to-painter.rkt")
(require "../2.48-segment.rkt")
(require "../2.46-vector.rkt")

; Untested

(define (add-edge2 v frame)
  (add-vect v (edge2-frame frame)))
(define (add-edge1 v frame)
  (add-vect v (edge1-frame frame)))

(define (close points)
  (map make-segment points 
       (append (cdr points) (car points)))

; a: frame outline
(define (frame-outline frame)
  (let ([orig (origin-frame frame)]
        [up (add-edge1 orig frame)]
        [right (add-edge2 orig frame)]
        [upright (add-edge2 up frame)])
    (segments->painter (close (list orig up upright right))
                       frame)))

; b: x
(define (draw-x frame)
  (let ([orig (origin-frame frame)]
        [up (add-edge1 orig frame)]
        [right (add-edge2 orig frame)]
        [upright (add-edge2 up frame)])
    (segments->painter (list (make-segment orig upright)
                             (make-segment up right))
                       frame)))

(define (diamond frame)
  (define (half-vect v)
    (scale-vect (/ 1 2) v))
  (let ([orig (origin-frame frame)]
        [half-edge1 (half-vect (edge1-frame frame))]
        [half-edge2 (half-vect (edge2-frame frame))])
    (segments->painter (close 
                         (list (add-vect orig half-edge1)
                               (add-vect (add-edge1 orig frame) half-edge2)
                               (add-vect (add-edge2 orig frame) half-edge1)
                               (add-vect orig half-edge2)))
                       frame)))

(provide frame-outline draw-x diamond)
