(load "./2.7.scm")

(define (div-interval a b)
  (define (span-zero? a) 
    (and (< (lower-bound a) 0) (> (upper-bound a) 0)))
  (if (span-zero? b)
    (error "Divide an interval spans zero.")
    (let ((p1 (/ (upper-bound a) (upper-bound b)))
          (p2 (/ (upper-bound a) (lower-bound b)))
          (p3 (/ (lower-bound a) (upper-bound b)))
          (p4 (/ (lower-bound a) (lower-bound b))))
      (make-interval (min p1 p2 p3 p4)
                     (max p1 p2 p3 p4)))))
