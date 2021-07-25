(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (term x base)
    (* 
      (f (+ a 
            (* x h))) 
      (if (even? (- x base)) 2 4)))
  (define (integral-iter l r sum)
    (cond ((= l r) (+ sum (term l 0)))
          ((> l r) sum)
          (else (integral-iter (+ l 1)
                               (- r 1)
                               (+ sum
                                  (term l 0)
                                  (term r n))))))
  (* (integral-iter 1 
                 (- n 1) 
                 (+ (f a) (f b)))
     (/ h 3)))
