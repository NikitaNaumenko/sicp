#lang racket
(provide f-iter f-recur)

(define (f-recur n)
  (if (< n 3)
      n
      (+ (f-recur (- n 1)) (f-recur (- n 2)) (f-recur (- n 3)))
  ))

(define (f-iter n) 
  (define (iter a b acc n)
    (if (= n 0)
        acc
        (iter (+ a b acc) a b (- n 1))))
  (iter 2 1 0 n))

#| 2 1 0 2 |#
#| 3 2 1 1 |#
#| 6 3 2 0 |#

#| 2 1 0 3 |#
#| 3 2 1 2 |#
#| 6 3 2 1 |#
#| 11 6 3 0 |#


#| 2 1 0 4 |#
#| 3 2 1 3 |#
#| 6 3 2 2 |#
#| 11 6 3 1 |#
#| 20 11 6 0 |#

#| 2 1 0 5 |#
#| 3 2 1 4 |#
#| 6 3 2 3 |#
#| 11 6 3 2 |#
#| 20 11 6 1 |#
#| 37 20 11 0 |#
