#lang racket
(require "../prime-test.rkt")

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))
(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(provide make-pair-sum prime-sum?)
