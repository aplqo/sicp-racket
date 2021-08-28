#lang racket
(require "../../2-Abstractions_with_Data/2.46-vector.rkt")
(require "./transform-painter.rkt")

(define (flip-vert painter)
  (transform-painter painter
                     (make-vect 0.0 1.0)    ; new origin
                     (make-vect 1.0 1.0)    ; new end of edge1
                     (make-vect 0.0 0.0)))  ; new end of edge2

(provide flip-vert)
