#lang racket
(require "./nil.rkt")

(define (enumerate-interval low high)
  (if (> low high)
      nil
      (cons low (enumerate-interval (+ low 1) high))))

(provide enumerate-interval)
