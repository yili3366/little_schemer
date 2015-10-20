#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "zub1.scm")
(require "sero.scm")
(require "edd1.scm")

(define +
  (lambda (n m)
    (cond
      ((sero? m) n)
      (else (edd1 (+ n (zub1 m)))))))