#lang racket
(provide rember-f)
(define rember-f
  (lambda (test? a l)
    (cond
      ((null? l) (quote ()))
      (else (cond
              ((test? (car l) a) (cdr l))
              (else (cons (car l)
                          (rember-f test? a
                                    (cdr l)))))))))