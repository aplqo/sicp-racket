(load "../../support/ch2/2.29/2.29.scm")

(define left-branch car)
(define right-branch cadr)
(define branch-length car)
(define branch-structure cadr)
(define (is-weight? x) (not (pair? x)))
