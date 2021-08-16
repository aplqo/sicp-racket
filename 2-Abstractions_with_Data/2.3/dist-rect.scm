(load "../2.2.scm")

(define (make-rect p1 p2)
  (cons p1
        (cons (- (x-point p2) (x-point p1))
              (- (y-point p2) (y-point p1)))))
(define (x-length r) (car (cdr r)))
(define (y-length r) (cdr (cdr r)))
