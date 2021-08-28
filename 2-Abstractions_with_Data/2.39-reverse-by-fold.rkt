#lang racket
(require "../support/fold-left.rkt")
(require "../support/fold-right.rkt")

(define (reverse1 sequence)
  (fold-right (lambda (x y) (append y (list x))) (list) sequence))
(define (reverse2 sequence)
  (fold-left (lambda (x y) (cons y x)) (list) sequence))

(provide reverse1 reverse2)
