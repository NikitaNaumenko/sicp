#lang racket
(require rackunit)
(require "../../src/chapter01/1_08.rkt")

(check-equal? (cub-sqrt 9.0) 2.080083823051904)
(check-equal? (cub-sqrt 25.0) 2.924017738212873)

