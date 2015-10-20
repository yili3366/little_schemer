#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "length.scm")

(define last-friend
  (lambda (x y)
    (length x)))