#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "fun.scm")
(require "revrel3.scm")

(define one-to-one?
  (lambda (fun)
    (fun? (revrel fun))))