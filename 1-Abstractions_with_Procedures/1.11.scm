(define (f-iter l3 l2 l1 count)
  (if (= count 0)
    l1
    (f-iter l2 l1 (+ l1 (* 2 l2) (* 3 l3)) (- count 1))))
(define (f x)
  (if (< x 3) x (f-iter 1 2 3 (- x 3))))
