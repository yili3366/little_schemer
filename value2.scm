#lang racket

(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "1st_sub_exp.scm")
(require "2nd_sub_exp.scm")
(require "operator.scm")
(require "atom.scm")

(define value
  (lambda (nexp)
    (cond
      ((atom? nexp) nexp)
      ((eq? (operator nexp) (quote +))
       (+ (value (1st-sub-exp nexp))
          (value (2nd-sub-exp nexp))))
      ((eq? (operator nexp) (quote *))
       (* (value (1st-sub-exp nexp))
          (value (2nd-sub-exp nexp))))
      (else
       (exp (value (1st-sub-exp nexp))
            (value (2nd-sub-exp nexp)))))))