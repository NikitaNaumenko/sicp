#lang racket
(require rackunit)
(require "../../src/chapter01/1_17.rkt")

(check-equal? (double 2) 4)
(check-equal? (double 3) 6)
(check-equal? (double 9) 18)
(check-equal? (halve 10) 5)
(check-equal? (halve 20) 10)
(check-equal? (halve 4) 2)

(check-equal? (fast-mult 3 4) 12)
(check-equal? (fast-mult 2 8) 16)
(check-equal? (fast-mult 8 9) 72)

(check-equal? (fast-mult-second 3 4) 12)
(check-equal? (fast-mult-second 2 8) 16)
(check-equal? (fast-mult-second 8 9) 72)
