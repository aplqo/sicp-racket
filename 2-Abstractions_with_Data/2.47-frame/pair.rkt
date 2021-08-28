#lang racket

(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2)))
(define origin-frame car)
(define edge1-frame cadr)
(define edge2-frame cddr)

(provide make-frame origin-frame 
         edge1-frame edge2-frame)
