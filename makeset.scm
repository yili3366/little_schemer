#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "member.scm")

(define makeset
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      ((member? (car lat) (cdr lat) )
       (makeset (cdr lat)))
      (else (cons (car lat)
                  (makeset (cdr lat)))))))
