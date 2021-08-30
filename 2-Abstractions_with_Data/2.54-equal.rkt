#lang racket

(define (equal? a b)
  (if (or (null? a) (null? b))
    (and (null? a) (null? b))
    (and (eq? (car a) (car b))
         (equal? (cdr a) (cdr b)))))

(provide equal?)
