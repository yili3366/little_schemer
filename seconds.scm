#lang racket
(provide seconds)

(define seconds
  (lambda (l)
    (cond
      ((null? l) (quote ()))
      (else (cons (car (cdr (car l)))
            (seconds (cdr l)))))))
    