#lang racket

(define (subset s)
  (if (null? s)
    (list (list))
    (let ([rest (subset (cdr s))])
      (append rest (map 
                     (lambda (x) (cons (car s) x))
                     rest)))))

(provide subset)
