#lang racket
(require "./beside.rkt")
(require "../../2-Abstractions_with_Data/2.51-below/transform.rkt")

(define (square-of-four tl tr bl br)
  (lambda (painter)
    (let ((top (beside (tl painter) (tr painter)))
          (bottom (beside (bl painter) (br painter))))
      (below bottom top))))

(provide square-of-four)
