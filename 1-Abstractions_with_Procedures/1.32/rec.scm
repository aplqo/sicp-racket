(define (accumulate combiner null-value term a next b)
  (define (do-acc i)
    (if (> i b) null-value
      (combiner (term i) (do-acc (next i)))))
  (do-acc a))
