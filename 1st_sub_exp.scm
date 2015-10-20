#lang racket
(provide 1st-sub-exp)

(define 1st-sub-exp
  (lambda (aexp)
    (car aexp)))