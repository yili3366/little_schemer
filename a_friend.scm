#lang racket
(provide a-friend)
(define a-friend
  (lambda (x y)
    (null? y)))
