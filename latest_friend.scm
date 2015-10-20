#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "a_friend.scm")

(define latest-friend
  (lambda (newlat seen)
    (a-friend (cons (quote and) newlat)
           seen)))
