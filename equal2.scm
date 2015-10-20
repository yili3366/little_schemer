#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")

(require "atom.scm")
(require "eqan.scm")
(require "eqlist2.scm")
(provide equal?)

(define equal?
  (lambda (s1 s2)
    (cond
      ((and (atom? s1) (atom? s2))
       (eqan? s1 s2))
      ((atom? s1) #f)
      ((atom? s2) #f)
      (else (eqlist? s1 s2)))))