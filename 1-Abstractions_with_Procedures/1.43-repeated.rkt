#lang racket

(define (repeated f n)
  (define (repeat i)
    (if (= i 1) 
      (lambda (x) (f x))
      (compose f (repeat (- i 1)))))
  (repeat n))

(provide repeated)