#lang racket
(require "../support/square.rkt")

(define (square-tree1 t)
  (cond ((null? t) t)
        ((not (pair? t)) (square t))
        (else (cons (square-tree1 (car t))
                    (square-tree1 (cdr t))))))

(define (square-tree2 t)
  (map (lambda (x) 
         (if (pair? x) 
           (square-tree2 x)
           (square x)))
       t))

(define square-tree square-tree2)
(provide square-tree)
