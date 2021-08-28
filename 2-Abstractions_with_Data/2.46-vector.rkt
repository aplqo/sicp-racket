#lang racket

(define make-vect cons)
(define xcor-vect car)
(define ycor-vect cdr)

(define (add-vect a b)
  (make-vect (+ (xcor-vect a) (xcor-vect b))
             (+ (ycor-vect a) (ycor-vect b))))
(define (sub-vect a b)
  (make-vect (- (xcor-vect a) (xcor-vect b))
             (- (ycor-vect a) (ycor-vect b))))
(define (scale-vect v s)
  (make-vect (* s (xcor-vect v))
             (* s (ycor-vect v))))

(provide make-vect xcor-vect ycor-vect
         add-vect sub-vect scale-vect)
