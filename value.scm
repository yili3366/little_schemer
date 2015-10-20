#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "atom.scm")
(require "exp.scm")

(define value
  (lambda (nexp)
    (cond
      ((atom? nexp) nexp)
      ((eq? (car (cdr nexp)) (quote +))
       (+ (value (car nexp))
          (value (car (cdr (cdr nexp))))))
      ((eq? (car (cdr nexp)) (quote *))
       (* (value (car nexp))
          (value (car (cdr (cdr nexp))))))
      (else
       (exp (value (car nexp))
           (value
            (car (cdr (cdr nexp)))))))))