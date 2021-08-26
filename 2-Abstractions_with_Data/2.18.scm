(define (reverse x)
  (define (do-reverse x acc)
    (if (null? x)
      acc
      (do-reverse (cdr x) (cons (car x) acc))))
  (if (null? x)
    x
    (do-reverse (cdr x) (car x))))
