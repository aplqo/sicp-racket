#lang racket
(require "../support/nil.rkt")

(define (find i items)
  (cond [(null? items) #f]
        [(= i (car items)) #t]
        [else (find i (cdr items))]))
(define (unique-first? items)
  (not (and (pair? items) (find (car items) (cdr items)))))

(define empty-board (list nil nil nil))
(define (adjoin-position row col rest)
  (list (cons row (car rest))
        (cons (+ row col) (cadr rest))
        (cons (- row col) (caddr rest))))
(define (safe? k position)
  (and (unique-first? (car position))
       (unique-first? (cadr position))
       (unique-first? (caddr position))))

(provide empty-board adjoin-position safe?)
