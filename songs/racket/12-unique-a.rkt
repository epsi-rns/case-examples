#lang racket

(define tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(define (unique tags)
  (if (<= (length tags) 1)
    tags
    (let ( 
        (head (first tags))
        (tail (rest tags)) )
      (append (list head)
        (unique (remove* (list head) tail)))
)))

(displayln (string-join
  (unique tags) ":"))
