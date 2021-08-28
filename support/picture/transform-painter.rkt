#lang racket
(require "./frame-coord-map.rkt")
(require "../../2-Abstractions_with_Data/2.46-vector.rkt")

(define (transform-painter painter origin corner1 corner2)
  (lambda (frame)
    (let ((m (frame-coord-map frame)))
      (let ((new-origin (m origin)))
        (painter
         (make-frame new-origin
                     (sub-vect (m corner1) new-origin)
                     (sub-vect (m corner2) new-origin)))))))

(provide transform-painter)
