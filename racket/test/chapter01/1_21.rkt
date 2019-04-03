#lang racket
(require rackunit)
(require "../../src/chapter01/1_21.rkt")


(check-equal? (smallest-divisor 19999) 7)
(check-equal? (smallest-divisor 1999) 1999)
(check-equal? (smallest-divisor 199) 199)
