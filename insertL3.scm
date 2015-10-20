#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "insert_g.scm")

(define insertL
  (insert-g
   (lambda (new old l)
     (cons new (cons old l)))))