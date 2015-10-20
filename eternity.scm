#lang racket
(provide eternity)

(define eternity
  (lambda (x)
    (eternity x)))