#lang racket
(provide even? square)

(define (even? n)
  (= (remainder n 2) 0))

(define (square n) (* n n))

(define (zero? n) (= n 0))

(define (positive? n) (> n 0))
