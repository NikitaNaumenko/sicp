#lang racket
#| Solution for exercise 7 chapter 1. |#

(provide sqrt solution)

(define (sqrt x)
  (define (average x y)
    (/ (+ x y) 2))

  (define (square x) (* x x))

  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))

  (sqrt-iter 1.0))

(define (solution x)
  (define (average x y)
    (/ (+ x y) 2))


  (define (improved-good-enough? guess prev-guess )
    (< (abs (- guess prev-guess)) 0.001))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (sqrt-iter guess prev-guess)
    (if (improved-good-enough? guess prev-guess)
        guess
        (sqrt-iter (improve guess) guess)))

  (sqrt-iter 1.0 0.0))

