#lang racket
(define no-nums
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      (else (cond
              ((number? (car lat))
               (no-nums (cdr lat)))
              (else (cons (car lat)
                          (no-nums
                           (cdr lat)))))))))