(define (sum term a next b)
  (define (sum-iter i sum)
    (if (> i b) sum
      (sum-iter (next i)
                (+ sum (term i)))))
  (sum-iter a 0))
