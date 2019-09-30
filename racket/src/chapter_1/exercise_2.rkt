#lang racket
#| Solution for exercise 2 chapter 1. |#

(provide solution)

(define solution
  (/ (+ 5
        4
        (- 2
           (- 3
              (+ 6
                 (/ 4
                    5))))) 
     (* 3
        (- 6
           2)
        (- 2
           7))))
