#lang racket
(define +
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (add1 (+ n (sub1 m)))))))