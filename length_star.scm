#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "first.scm")
(require "second.scm")
(require "atom.scm")
 
(define length*
  (lambda (pora)
    (cond
      ((atom? pora) 1)
      (else
       (+ (length* (first pora))
          (length* (second pora)))))))