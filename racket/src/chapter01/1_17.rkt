#lang racket
(provide double halve fast-mult fast-mult-second)

(require "../../src/utils.rkt")

(define (halve x) (/ x 2))

(define (double x) (* x 2))

(define (fast-mult b n)
  (define (dec n) (- n 1))
  (define (inc n) (+ n 1))
  (cond ((zero? b) 0)
        ((even? b) (fast-mult (halve b) (double n)))
        ((positive? b) (+ (fast-mult (halve (dec b)) (double n))
                                      n))
        (else (- (fast-mult (halve (inc b)) (double n))
                            n))))

(define (fast-mult-second a n) 
  (define (even? n) (= (remainder n 2) 0))
  (define (zero? n) (= n 0))
  (define (dec n) (- n 1))
  (cond ((zero? n) 0)
        ((even? n) (double (fast-mult-second a (halve n))))
        (else (+ a (fast-mult-second a (dec n))))))
