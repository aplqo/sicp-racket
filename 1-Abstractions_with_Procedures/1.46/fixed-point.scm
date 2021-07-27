(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2) 
    (< (abs (-v1 v2)) tolerance))
  ((iterative-improve
     (lambda (x) (close-enough? x (f x)))
     f)
   first-guess))
