#lang racket
(require "./unique-pairs.rkt")
(require "../../support/ch2/2.40.rkt")

(define (prime-sum-pairs n)
  (map make-pair-sum 
       (filter prime-sum? (unique-pairs n))))

(provide prime-sum-pairs)
