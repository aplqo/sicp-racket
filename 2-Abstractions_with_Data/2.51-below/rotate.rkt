#lang racket
(require "../2.50-transforms/rotate270.rkt")
(require "../../support/picture/beside.rkt")
(require "../../support/picture/rotate90.rkt")

(define (below painter1 painter2)
  (rotate270 (below (rotate90 painter2)
                    (rotate90 painter1))))

(provide below)
