#lang racket

(define tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(display (string-join
  (remove "rock" tags) ":"))
(newline)
