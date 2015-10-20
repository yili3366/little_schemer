#lang racket

(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "member.scm")

(define set?
  (lambda (lat)
    (cond
      ((null? lat) #t)      
      ((member? (car lat) (cdr lat)) #f)
      (else (set? (cdr lat))))))