#lang racket
(provide sqrt improved-sqrt)
#| Task from chapter 1.1.7 |#
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

#| Exercise 1.7 |#
(define (improved-sqrt x)
  (define (average x y)
    (/ (+ x y) 2))

  (define (square x) (* x x))

  (define (improved-good-enough? guess prev-guess)
    (< (abs (- guess prev-guess)) 0.000001))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (sqrt-iter guess prev-guess)
    (if (improved-good-enough? guess prev-guess)
        guess
        (sqrt-iter (improve guess) guess)))

  (sqrt-iter 1.0 0.0))

