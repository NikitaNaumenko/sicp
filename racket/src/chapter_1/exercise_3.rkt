#lang racket
#| Solution for exercise 3 chapter 1. |#

(provide solution)

(define (solution a b c)
  (cond ((and
           (> a b)
           (> b c)
           (* a b)))
        ((and
           (> c a)
           (> b a)
           (* c b)))
         ((and
           (> a b)
           (> c b)
           (* c a)))))
