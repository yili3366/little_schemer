#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "one.scm")

(define C
  (lambda (n)
    (cond
      ((one? n) 1 )
      (else
       (cond
         ((even? n) (C (/ n 2 )))
         (else (C (add1 (* 3 n)))))))))
