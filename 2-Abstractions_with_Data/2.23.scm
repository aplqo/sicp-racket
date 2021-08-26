(define (for-each p items)
  (if (null? items)
    #t
    (begin   
      (p (car items))
      (for-each p (cdr items)))))
