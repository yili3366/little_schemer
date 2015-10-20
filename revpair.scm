#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "build.scm")

(provide revpair)

(define revpair
  (lambda (pair)
    (build (second pair) (first pair))))