#lang racket
(define all-nums
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      (else
       (cond
         ((number? (car lat))
          (cons (car lat)
                (all-nums (cdr lat))))
         (else (all-nums (cdr lat))))))))