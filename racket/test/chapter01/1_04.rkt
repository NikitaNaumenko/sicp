#lang racket

(require rackunit)
(require (file "/usr/sicp/racket/src/chapter01/1_04.rkt"))

(check-equal? (a-plus-abs-b 2 -1) 3)
(check-equal? (a-plus-abs-b 2 1) 3)
