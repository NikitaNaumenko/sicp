#lang racket
(require rackunit)

(define (a-plus-abs-b a b)
  (
   (if
     (> b 0) + -)
   a b)
  )

(check-equal? (a-plus-abs-b 2 -1) 3)
(check-equal? (a-plus-abs-b 2 1) 3)

