#lang racket
(provide cub-sqrt)

(define (cub-sqrt x)
  (define (square x) (* x x))

  (define (improve guess x)
    (/ (+ (/ x (square guess))
          (* 2 guess))
       3))

  (define (good-enough? guess prev-guess)
    (< (abs (- guess prev-guess)) 0.000001))

  (define (sqrt-iter guess prev-guess)
    (if (good-enough? guess prev-guess)
        guess
        (sqrt-iter (improve guess x) guess)))
  (sqrt-iter 1.0 0.0))

