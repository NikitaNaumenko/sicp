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

(check-equal? (sum-of-max 3 2 1) 6);6
(check-equal? (sum-of-max 3 6 8) 48);48
(check-equal? (sum-of-max 9 6 8) 72);72
