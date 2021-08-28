#lang racket
(require "../../support/picture/square-of-four.rkt")
(require "../../support/picture/flip-vert.rkt")
(require "../../support/picture/corner-split.rkt")
(require "../2.50-transforms/rotate180.rkt")
(require "../2.50-transforms/flip-horiz.rkt")

(define (square-limit painter n)
  ((square-of-four flip-vert rotate180
                   identity flip-horiz)
   (corner-split painter n)))

(provide square-limit)
