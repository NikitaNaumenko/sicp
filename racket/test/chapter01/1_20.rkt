#lang racket
(require rackunit)
(require "../../src/chapter01/1_20.rkt")

(check-equal? (gcd 206 40) 2)
