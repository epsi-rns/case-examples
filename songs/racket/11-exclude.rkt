#lang racket

(define tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(displayln (string-join
  (remove* (list "rock") tags) ":"))
