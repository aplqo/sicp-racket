#lang racket

(require "../support/accumulate.rkt")
(require "./2.36-accumulate-n.rkt")

(define (sum-product a b)
  (accumulate + 0 (map * a b)))

(define (matrix-*-vector m v)
  (map (lambda (row) (sum-product row v)) m))
(define (transpose mat)
  (accumulate-n cons (list) mat))
(define (matrix-*-matrix m n)
  (let ([cols (transpose n)])
    (map (lambda (row) 
           (map (lambda (col) (sum-product row col)) 
                cols)) 
         m)))

(provide matrix-*-vector transpose matrix-*-matrix)
