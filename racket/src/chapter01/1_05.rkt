#lang racket
(require rackunit)

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
; (test 0 (p)) ; standart racket interpreter -> infinity loop
; (test 0 (p)) ; lazy racket interpreter -> 0