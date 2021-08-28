#lang racket
(require "../2.46-vector.rkt")
(require "../../support/picture/transform-painter.rkt")

(define (rotate270 painter)
  (transform-painter painter
                     (make-vect 0.0 1.0)
                     (make-vect 0.0 0.0)
                     (make-vect 1.0 1.0)))

(provide rotate270)
