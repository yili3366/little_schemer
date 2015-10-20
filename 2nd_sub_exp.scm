#lang racket
(provide 2nd-sub-exp)

(define 2nd-sub-exp
  (lambda (aexp)
    (car (cdr (cdr aexp)))))