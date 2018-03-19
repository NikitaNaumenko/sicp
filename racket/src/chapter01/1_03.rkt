#lang racket

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
(sum-of-max 3 2 1) ;6
(sum-of-max 3 6 8) ;48
(sum-of-max 9 6 8) ;72
