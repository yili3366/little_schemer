#lang racket
(provide atom-to-function)
(define atom-to-function
  (lambda (x)
    (cond
      ((eq? x (quote +)) +)
      ((eq? x (quote *)) *)
      (else exp))))