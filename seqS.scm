#lang racket
(provide seqS)

(define seqS
  (lambda (new old l)
    (cons new l)))