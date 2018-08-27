#lang racket
(require rackunit)
(require "../../src/chapter01/1_14.rkt")

(check-equal? (count-change 100) 292)


