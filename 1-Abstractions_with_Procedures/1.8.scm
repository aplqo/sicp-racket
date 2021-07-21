(define (improve guess x)
  (/
    (+ 
      (/ x (square guess))
      (* 2 guess))
    3))
(define (good-enough? old new)
  (< (abs (- old new)) 0.001))
(define (iter old new x)
  (if (good-enough? old new)
    old
    (cbrt-iter new x)))
(define (cbrt-iter guess x)
  (iter guess (improve guess x) x))
(define (cbrt x) (cbrt-iter 1.0 x))
