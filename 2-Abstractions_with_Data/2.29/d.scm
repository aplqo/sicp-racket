(load "../../support/ch2/2.29/d.scm")

; load this file instead
(define left-branch car)
(define right-branch cdr)
(define branch-length car)
(define branch-structure cdr)
(define (is-weight? x) (not (pair? x)))
