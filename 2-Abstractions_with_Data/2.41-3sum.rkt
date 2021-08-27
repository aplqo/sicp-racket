#lang racket
(require "../support/enumerate-interval.rkt")
(require "../support/flatmap.rkt")
(require "../support/nil.rkt")
(require "../1-Abstractions_with_Procedures/1.43-repeated.rkt")

(define (3sum n s)
  (define (sum-equal? items)
    (= (+ (car items) (cadr items) (caddr items)) s))
  (define (enumerate-append rest)
    (flatmap (lambda (i) 
               (map (lambda (r) (cons i r)) 
                    rest))
             (enumerate-interval 1 n)))

  (filter sum-equal? ((repeated enumerate-append 3) (list nil))))

(provide 3sum)
