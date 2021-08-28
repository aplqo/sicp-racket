#lang racket

(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))
(define origin-frame car)
(define edge1-frame cadr)
(define edge2-frame caddr)

(provide make-frame origin-frame edge1-frame edge2-frame)
