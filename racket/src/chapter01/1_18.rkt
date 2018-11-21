#lang racket
(provide double halve fast-mult-iter)

(require "../../src/utils.rkt")

(define (halve x) (/ x 2))

(define (double x) (* x 2))

(define (fast-mult-iter a b)
  (define (dec n) (- n 1))

  (define (iter a b acc)
    (cond ((zero? b) acc)
          ((even? b) (iter (double a) (halve b) acc))
          (else (iter a (- b 1) (+ acc a)))))
  (iter a b 0))

