#lang racket
(provide operator)

(define operator
  (lambda (aexp)
    (car (cdr aexp))))