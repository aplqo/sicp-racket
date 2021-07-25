(define (pi n)
  (define (term x) (/ (+ x 1.0) x))
  (define (next x) (+ x 2.0))
  (define last (+ 3 (* n 2)))
  (* (/ (square 
          (product term 3 next last))
        (+ last 2)) 
     8))
(define (id x) x)
(define (inc x) (+ x 1))
(define (factorial x) (product id 1 inc x))
