#lang racket

(define tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(format "Head: ~s" (list-ref  tags 0))
(format "Tail: ~a" (list-tail tags 1))

(format "Head: ~s" (first tags))
(format "Tail: ~a" (rest  tags))

(define tags-str
   (foldr
     (lambda (acc tag)
       (string-append acc ":" tag))
     (first tags)
     (rest  tags)))

(displayln tags-str)
