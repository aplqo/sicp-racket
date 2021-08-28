#lang racket
(require "./beside.rkt")
(require "../../2-Abstractions_with_Data/2.51-below/transform.rkt")

(define (right-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (right-split painter (- n 1))))
        (beside painter (below smaller smaller)))))

(provide right-split)
