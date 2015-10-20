#lang racket
(provide even?)

(define even?
  (lambda (n)
    (= (* (/ n 2) 2) n)))