(define (binom m n)
  (cond ((= n 0) 1)
        ((= m 0) 0)
        (else (+ (binom (- m 1) n) (binom (- m 1) (- n 1))))))
