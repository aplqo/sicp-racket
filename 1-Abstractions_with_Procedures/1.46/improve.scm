(define (iterative-improve gooed-enough? improve)
  (define (do-iter x)
    (if (gooed-enough? x) 
      x 
      (do-iter (improve x))))
  do-iter)
