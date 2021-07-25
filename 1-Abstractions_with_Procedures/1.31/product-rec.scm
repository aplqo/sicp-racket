(define (product term a next b)
  (define (prod x)
    (if (> x b) 1
      (* (term x) (prod (next x)))))
  (prod a))
