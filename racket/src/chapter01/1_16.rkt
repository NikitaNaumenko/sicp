#lang racket
(provide fast-expt)

(require "../../src/utils.rkt")

(define (fast-expt b n)
  (define (square n) (* n n))
  (define (iter b n acc)
    (cond ((= n 0) acc)
          ((even? n) (iter (square b) (/ n 2) acc))
          (else (iter b (- n 1) (* acc b)))))
  (iter b n 1))
