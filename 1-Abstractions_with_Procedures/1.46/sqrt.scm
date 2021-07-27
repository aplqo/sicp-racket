(define (sqrt x)
  (define (average x y)
    (/ (+ x y) 2))
  ((iterative-improve
     (lambda (i) (< (abs (- (square i) x)) 0.001))
     (lambda (i) (average i (/ x i))))
   1.0))
