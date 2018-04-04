#lang racket
(require rackunit)

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
(test 0 (p)) ; racket infinity loop
(test 0 (p)) ; lazy 0
