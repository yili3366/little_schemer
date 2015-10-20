#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "seconds.scm")

(define fullfun?
  (lambda (fun)
    (set? (seconds fun))))