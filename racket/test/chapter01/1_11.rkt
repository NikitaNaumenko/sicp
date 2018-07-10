#lang racket
(require rackunit)
(require "../../src/chapter01/1_11.rkt")

(check-equal? (f-recur 1) 1)
(check-equal? (f-recur 2) 2)
(check-equal? (f-recur 3) 3)
(check-equal? (f-recur 4) 6)
(check-equal? (f-recur 5) 11)
(check-equal? (f-recur 10) 230)

(check-equal? (f-iter 1) 1)
(check-equal? (f-iter 2) 2)
(check-equal? (f-iter 3) 3)
(check-equal? (f-iter 4) 6)
(check-equal? (f-iter 5) 11)
(check-equal? (f-iter 10) 230)
