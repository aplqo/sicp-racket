; include 1.17.scm
(define (square x) (multiply x x))
(define (expt-iter base count acc)
  (cond ((= count 0) acc)
        ((even? count) (expt-iter (square base) (halve count) acc))
        (else (expt-iter base (- count 1) (multiply acc base)))))
(define (fast-expt base count) (expt-iter base count 1))
