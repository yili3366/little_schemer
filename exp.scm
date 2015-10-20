#lang racket
(define exp
  (lambda (n m)
    (cond
      ((zero? m) 1)
      (else (* n (exp n (sub1 m)))))))
