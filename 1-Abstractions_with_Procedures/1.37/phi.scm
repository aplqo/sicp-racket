(define (phi k)
  (/ 1
     (cont-frac
       (lambda (i) 1.0)
       (lambda (i) 1.0)
       k)))
