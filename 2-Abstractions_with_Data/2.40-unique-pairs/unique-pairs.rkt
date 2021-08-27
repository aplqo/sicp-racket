#lang racket
(require "../../support/enumerate-interval.rkt")
(require "../../support/flatmap.rkt")

(define (unique-pairs n)
  (flatmap
    (lambda (i) (map (lambda (j) (list i j))
                     (enumerate-interval 1 (- i 1))))
    (enumerate-interval 1 n)))

(provide unique-pairs)
