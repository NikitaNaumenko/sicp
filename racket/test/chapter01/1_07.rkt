#lang racket

(require rackunit)
(require "../../src/chapter01/1_07.rkt")

(check-equal? (sqrt 9.0) 3.00009155413138)
(check-equal? (improved-sqrt 9.0) 3.0)

