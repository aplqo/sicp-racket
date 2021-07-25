(define (expmod base e m)
  (cond ((= e 0) 1)
        ((even? e) (remainder (square (expmod base (/ e 2) m)) m))
        (else (remainder (* (expmod base (- e 1) m) 
                            base) 
                         m))))
(define (check-iter n a)
  (if (< a n)
    (if (= (expmod a n n) a)
      (check-iter n (+ a 1))
      (begin
        (display "N is not Carmichael number")
        (newline)
        (display a)))))
(define (check n) (check-iter n 1))
