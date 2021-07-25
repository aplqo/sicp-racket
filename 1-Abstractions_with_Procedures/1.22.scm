; ----- code from page 83 -----
(define (smallest-divisor n) 
  (find-divisor n 2)) 
(define (find-divisor n test-divisor) 
  (cond ((> (square test-divisor) n) n) 
        ((divides? test-divisor n) test-divisor) 
        (else (find-divisor n (+ test-divisor 1))))) 
(define (divides? a b) (= (remainder b a) 0))
(define (prime? n) (= n (smallest-divisor n)))
; ----- code from page 88 -----
(define (timed-prime-test n) 
  (newline) 
  (display n) 
  (start-prime-test n (runtime))) 
(define (start-prime-test n start-time) 
  (if (prime? n) 
    (report-prime (- (runtime) start-time))
    #f))
(define (report-prime elapsed-time) 
  (display " *** ")
  (display elapsed-time)
  #t)
; ----- -----
(define (find-primes start count)
    (if (> count 0)
      (find-primes 
        (+ start 2)
        (if (timed-prime-test start) (- count 1) count))))
    
