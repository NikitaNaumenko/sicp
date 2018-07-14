#lang racket
(provide pascal)

(define (pascal element row)
  (cond ((or (= element 1) (= element row)) 1)
        ((and (> element 1) (> row element)) (+ (pascal (- element 1) (- row 1))
                                                (pascal element (- row 1))))))
