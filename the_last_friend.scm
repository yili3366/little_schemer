#lang racket
(provide the-last-friend)
(define the-last-friend
  (lambda (newl product sum)
    (cons sum
          (cons product
                newl))))
