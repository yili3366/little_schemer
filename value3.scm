#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "atom.scm")
(require "atom_to_function.scm")
(require "operator.scm")
(require "1st_sub_exp.scm")
(require "2nd_sub_exp.scm")

(define value
  (lambda (nexp)
    (cond
      ((atom? nexp) nexp)
      (else
       ((atom-to-function
         (operator nexp))
        (value (1st-sub-exp nexp))
        (value (2nd-sub-exp nexp)))))))