#lang racket
(define >
  (lambda (n m)
    (cond
      ((zero? m) #t)
      ((zero? n) #f)
      (else (> (sub1 n) (sub1 m))))))