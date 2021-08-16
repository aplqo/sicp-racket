(define make-point cons)
(define x-point car)
(define y-point cdr)

(define (midpoint p1 p2)
  (define (average a b) (/ (+ a b) 2))
  (make-point (average (x-point p1) (x-point p2))
              (average (y-point p1) (y-point p2))))

(define make-segment cons)
(define start-segmant car)
(define end-segment cdr)

(define (midpoint-segment s)
  (midpoint (start-segmant s) (end-segment s)))

; ----- code from page 131
(define (print-point p) 
  (newline) 
  (display "(") 
  (display (x-point p)) 
  (display ",") 
  (display (y-point p)) 
  (display ")"))

; ----- test code
(define (test-midpoint x1 y1 x2 y2)
  (print-point (midpoint (make-point x1 y1)
                         (make-point x2 y2))))
(define (test-midpoint-segment x1 y1 x2 y2)
  (print-point (midpoint-segment 
                 (make-segment (make-point x1 y1)
                               (make-point x2 y2)))))
