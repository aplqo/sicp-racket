#lang racket
(require "./accumulate.rkt")
(require "./nil.rkt")

(define (flatmap proc seq)
  (accumulate append nil (map proc seq)))

(provide flatmap)
