#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "first.scm")
(require "second.scm")
(require "build.scm")

(define revrel
  (lambda (rel)
    (cond
      ((null? rel) (quote ()))
      (else (cons (build
                   (second (car rel))
                   (first (car rel)))
                  (revrel (cdr rel)))))))