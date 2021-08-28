#lang racket
(require (only-in sicp-pict draw-line))
(require "./frame-coord-map.rkt")
(require "../../2-Abstractions_with_Data/2.48-segment.rkt")

(define (segments->painter segment-list)
  (lambda (frame)
    (for-each
     (lambda (segment)
       (draw-line
        ((frame-coord-map frame) (start-segment segment))
        ((frame-coord-map frame) (end-segment segment))))
     segment-list)))

(provide segments->painter)
