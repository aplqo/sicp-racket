#lang racket
(require "../../support/picture/transform-painter.rkt")
(require "../2.46-vector.rkt")

(define (flip-horiz painter)
  (transform-painter painter
                     (make-vect 1.0 0.0)
                     (make-vect 0.0 0.0)
                     (make-vect 1.0 1.0)))

(provide flip-horiz)
