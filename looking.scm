#lang racket
(current-directory "/home/yijun/Nutstore/codes/program_launguage/little_schemer")
(require "pick.scm")
(require "keep_looking.scm")

(define looking
  (lambda (a lat)
    (keep-looking a (pick 1 lat) lat)))