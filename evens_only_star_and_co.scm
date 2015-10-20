#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "atom.scm")

(define evens-only*&co
  (lambda (l col)
    (cond
      ((null? l)
       (col (quote ()) 1 0))
      ((atom? (car l))
       (cond
         ((even? (car l))
          (evens-only*&co (cdr l)
                          (lambda (newl p s )
                            (col (cons (car l) newl)
                                 (* (car l) p) s))))
         (else (evens-only*&co (cdr l)
                               (lambda (newl p s)
                                 (col newl
                                      p (+ (car l) s)))))))
      (else (evens-only*&co (car l)
                            (lambda (al ap as)
                              (evens-only*&co (cdr l)
                                              (lambda (dl dp ds )
                                                (col (cons al dl)
                                                     (* ap dp)
                                                     (+ as ds))))))))))
