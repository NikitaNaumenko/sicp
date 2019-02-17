#lang racket
(provide gcd)

(require "../../src/utils.rkt")

(define (gcd a b)
  (if (= b 0) 
      a
      (gcd b (remainder a b))))
