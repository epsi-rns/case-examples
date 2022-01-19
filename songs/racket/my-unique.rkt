#lang racket
(provide unique-tags)

(define (unique-tags tags)
  (if (<= (length tags) 1)
    tags
    (let ( 
        (head (first tags))
        (tail (rest tags)) )
      (append (list head)
        (unique-tags (remove head tail)))
)))
