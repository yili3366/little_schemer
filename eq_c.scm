#lang racket
(provide eq?-c)

(define eq?-c
  (lambda (a)
    (lambda (x)
      (eq? x a))))
