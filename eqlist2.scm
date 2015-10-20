#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(include "atom.scm")
(include "eqan.scm")
(require "atom.scm")
(require "eqan.scm")

(provide eqlist?)

(define eqlist?
  (lambda (l1 l2)
    (cond
      ((and (null? l1) (null? l2)) #t)
      ((or (null? l1) (null? l2)) #f)
      ((and (atom? (car l1))
            (atom? (car l2)))
       (and (eqan? (car l1) (car l2))
            (eqlist? (cdr l1) (cdr l2))))
      ((or (atom? (car l1))
           (atom? (car l2)))
       #f)
      (else
       (and (eqlist? (car l1) (car l2))
            (eqlist? (cdr l1) (cdr l2)))))))