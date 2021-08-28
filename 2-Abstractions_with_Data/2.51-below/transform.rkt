#lang racket
(require "../../support/picture/transform-painter.rkt")
(require "../2.46-vector.rkt")

(define (below painter1 painter2)
  (let ([split-point (make-vect 0.0 0.5)])
    (let ([painter-below 
            (transform-painter
              painter1
              (make-vect 0.0 0.0)
              (make-vect 1.0 0.0)
              split-point)]
          [painter-up
            (transform-painter
              painter2
              split-point
              (make-vect 1.0 0.5)
              (make-vect 0.0 1.0))])
      (lambda (frame)
        (painter-below frame)
        (painter-up frame)))))

(provide below)
