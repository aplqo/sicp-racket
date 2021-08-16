(load "../2.2.scm")

(define make-rect cons)
(define (x-length r)
  (- (x-point (cdr r)) (x-point (car r))))
(define (y-length r)
  (- (y-point (cdr r)) (y-point (car r))))
