#lang racket
(require "./transform-painter.rkt")
(require "../../2-Abstractions_with_Data/2.46-vector.rkt")

(define (rotate90 painter)
  (transform-painter painter
                     (make-vect 1.0 0.0)
                     (make-vect 1.0 1.0)
                     (make-vect 0.0 0.0)))

(provide rotate90)
