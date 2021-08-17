; ----- code from P134
(define (cons x y) 
  (lambda (m) (m x y))) 
(define (car z) 
  (z (lambda (p q) p)))
; ----- end

(define (cdr z)
  (z (lambda (p q) q)))
