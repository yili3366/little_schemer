#lang racket
(define revrel
  (lambda (rel)
    (cond
      ((null? rel) (quote ()))
      (else (cons (cons
                   (car (cdr (car rel)))
                   (cons (car (car rel))
                         (quote ())))
                  (revrel (cdr rel)))))))