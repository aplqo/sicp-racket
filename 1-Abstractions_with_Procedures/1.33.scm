(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter i sum)
    (if (> i b) sum
      (iter (next i) (combiner (if (filter i) (term i)
                                 null-value)
                               sum))))
  (iter a null-value))

(define (id x) x)
(define (inc x) (+ x 1))

(define (sum-prime a b)
  (filtered-accumulate prime? + 0 id a inc b))

(define (rprime-product n)
  (define (filter x) (= (gcd x n) 1))
  (filtered-accumulate filter * 1 id 1 inc n))
