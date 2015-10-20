#lang racket
(provide seqL)

(define seqL
  (lambda (new old l)
    (cons new (cons old l))))