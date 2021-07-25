(define (accumulate combiner null-value term a next b)
  (define (iter i sum)
    (if (> i b) sum
      (iter (next i) (combiner (term i) sum))))
  (iter a null-value))
