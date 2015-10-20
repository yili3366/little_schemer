#lang racket
(define multiinsertLR&co
  (lambda (new oldL oldR lat col)
    (cond
      ((null? lat)
       (col (quote ()) 0 0))
      ((eq? (car lat) oldL)
       (multiinsertLR&co new oldL oldR
                         (cdr lat)
                         (lambda (newlat L R)
                           (col (cons new
                                      (cons oldL newlat))
                                (add1 L) R))))
      ((eq? (car lat) oldR)
       (multiinsertLR&co new oldL oldR
                         (cdr lat)
                         (lambda (newlat L R)
                           (col (cons oldR (cons new newlat))
                                L (add1 R)))))
      (else
       (multiinsertLR&co new oldL oldR
                         (cdr lat)
                         (lambda (newlat L R)
                           (col (cons (car lat) newlat)
                                L R)))))))
    