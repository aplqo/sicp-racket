#lang racket

(define (tree-map proc tree)
  (map (lambda (x)
         (if (pair? x)
           (tree-map proc x)
           (proc x)))
       tree))

(provide tree-map)
