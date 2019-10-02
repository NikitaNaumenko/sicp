#lang racket
#| Solution for exercise 6 chapter 1. |#

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

; (sqrt-iter 1 2) standart racket interpreter -> infinity loop for 11 string
; lazy racket interpreter return result