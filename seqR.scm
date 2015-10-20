#lang racket
(provide seqR)

(define seqR
  (lambda (new old l)
    (cons old (cons new l))))