#lang racket
(require "../2.51-below/transform.rkt")
(require "../2.44-up-split.rkt")
(require "../../support/picture/beside.rkt")
(require "../../support/picture/right-split.rkt")

(define (corner-split painter n)
  (if (= n 0)
      painter
      (beside (below painter
                     (up-split painter (- n 1)))
              (below (right-split painter (- n 1))
                     (corner-split painter (- n 1))))))

(provide corner-split)
