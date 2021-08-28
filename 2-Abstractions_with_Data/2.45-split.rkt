#lang racket
; untested

(define (split comb small)
  (define (do-split painter n)
    (if (= n 0)
      painter
      (let ([smaller (do-split painter (- n 1))])
        (comb painter (small smaller smaller)))))
  do-split)

(provide split)
