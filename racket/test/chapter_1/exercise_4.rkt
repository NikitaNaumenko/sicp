#lang racket

(require rackunit)
(require (file "../../src/chapter_1/exercise_4.rkt"))

(check-equal? (solution 2 -1) 3)
(check-equal? (solution 2 1) 3)
