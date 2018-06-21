#lang racket

(require rackunit)
(require (file "../../src/chapter01/1_03.rkt"))

(check-equal? (sum-of-max 3 2 1) 6);6
(check-equal? (sum-of-max 3 6 8) 48);48
(check-equal? (sum-of-max 9 6 8) 72);72
