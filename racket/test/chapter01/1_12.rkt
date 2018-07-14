#lang racket
(require rackunit)
(require "../../src/chapter01/1_12.rkt")

(check-equal? (pascal 3 5) 6)
(check-equal? (pascal 1 2) 1)
(check-equal? (pascal 2 3) 2)
(check-equal? (pascal 3 4) 3)
(check-equal? (pascal 3 5) 6)
(check-equal? (pascal 4 6) 10)

