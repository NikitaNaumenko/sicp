#lang racket

(require rackunit)
(require (file "../../src/chapter_1/exercise_7.rkt"))

(check-equal? (sqrt 9) 3.00009155413138)
(check-equal? (sqrt 16) 4.000000636692939)

(check-equal? (solution 9) 3.000000001396984)
(check-equal? (solution 16) 4.000000000000051)
