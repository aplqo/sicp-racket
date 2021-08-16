(define (make-rat n d)
  (let ((g (* (if (< d 0) -1 1)
             (gcd n d))))
    (cons (/ n g) (/ d g))))
