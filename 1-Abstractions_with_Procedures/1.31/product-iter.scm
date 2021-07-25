(define (product term a next b)
  (define (product-iter i sum)
    (if (> i b) sum
      (product-iter (next i) 
                    (* sum (term i)))))
  (product-iter a 1))
