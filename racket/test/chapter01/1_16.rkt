#lang racket
(require rackunit)
(require "../../src/chapter01/1_16.rkt")

(check-equal? (fast-expt 3 4) 81)
(check-equal? (fast-expt 2 8) 256)
(check-equal? (fast-expt 8 9) 134217728)
