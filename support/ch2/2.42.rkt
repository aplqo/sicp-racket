#lang racket
(require "../../2-Abstractions_with_Data/2.42.rkt")
(require "../flatmap.rkt")
(require "../enumerate-interval.rkt")

(define (queens board-size)
  (define (queen-cols k)  
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
	 ;; next expression changed
         (flatmap
	  (lambda (new-row)
	    (map (lambda (rest-of-queens)
		   (adjoin-position new-row k rest-of-queens))
		 (queen-cols (- k 1))))
	  (enumerate-interval 1 board-size)))))
  (queen-cols board-size))

(provide queens)
