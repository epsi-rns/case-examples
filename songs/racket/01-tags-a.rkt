#lang racket

(define tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(define tags-str
  (string-join tags ":"))
(display tags-str)
(newline)

(format "Head: ~s" (car tags))
(format "Tail: ~a" (cdr tags))

(for-each display tags)
(newline)
