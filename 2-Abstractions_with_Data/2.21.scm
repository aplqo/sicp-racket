(define (square-list1 items)
  (if (null? items)
    items
    (cons (square (car items))
          (square-list1 (cdr items)))))

(define (square-list2 items)
  (map square items))
