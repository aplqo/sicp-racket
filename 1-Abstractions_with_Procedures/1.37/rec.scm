(define (cont-frac n d k)
  (define (get-frac i)
    (if (= i k)
      (/ (n i) (d i))
      (/ (n i)
         (+ (d i) (get-frac (+ i 1))))))
  (get-frac 1))
