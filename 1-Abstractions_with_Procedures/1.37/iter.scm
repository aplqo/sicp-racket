(define (cont-frac n d k)
  (define (iter i sum)
    (if (= i 0)
      sum
      (iter (- i 1)
            (/ (n i)
               (+ (d i) sum)))))
  (iter k 0))
