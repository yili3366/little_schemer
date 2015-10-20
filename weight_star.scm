#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "first.scm")
(require "second.scm")
(require "atom.scm")
 
(define weight*
  (lambda (pora)
    (cond
      ((atom? pora) 1)
      (else
       (+ (weight* (first pora))
          (weight* (second pora)))))))