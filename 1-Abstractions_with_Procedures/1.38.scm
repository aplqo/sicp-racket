(define (e k)
  (define (d i)
    (if (= (remainder i 3) 2)
      (* (/ (+ i 1) 3) 2)
      1))
  (+ (cont-frac
       (lambda (i) 1.0)
       d
       k)
     2))
