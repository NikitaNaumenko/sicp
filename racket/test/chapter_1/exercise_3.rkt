#lang racket

(require rackunit)
(require (file "../../src/chapter_1/exercise_3.rkt"))

(check-equal? (solution 3 2 1) 6);6
(check-equal? (solution 3 6 8) 48);48
(check-equal? (solution 9 6 8) 72);72
