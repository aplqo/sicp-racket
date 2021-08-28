#lang racket
(require "../../2-Abstractions_with_Data/2.46-vector.rkt")
(require "../../2-Abstractions_with_Data/2.47-frame/pair.rkt")

(define (frame-coord-map frame)
  (lambda (v)
    (add-vect
     (origin-frame frame)
     (add-vect (scale-vect (xcor-vect v)
                           (edge1-frame frame))
               (scale-vect (ycor-vect v)
                           (edge2-frame frame))))))

(provide frame-coord-map)
