#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "firsts.scm")
(provide fun?)

(define fun?
  (lambda (rel)
    (set? (firsts rel))))
