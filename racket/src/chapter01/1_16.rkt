#lang racket
(provide fast-expt)

(define (fast-expt b n)
  (define (even? number) (= (remainder number 2) 0))
  (define (square n) (* n n))
  (define (iter b n acc)
    (cond ((= n 0) acc)
          ((even? n) (iter (square b) (/ n 2) acc))
          (else (iter b (- n 1) (* acc b)))))
  (iter b n 1))
