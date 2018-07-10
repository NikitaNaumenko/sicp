#lang racket
(provide sum-of-max)

(define (sum-of-max a b c)
  (cond ((and
           (> a b)
           (> b c)
           (* a b)))
        ((and
           (> c a)
           (> b a)
           (* b c)))
        ((and 
           (> a b)
           (> c b)
           (* a c)))
        ))
