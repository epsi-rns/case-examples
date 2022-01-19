#lang racket

(define tags (list
  '("60s" "jazz")
  '("60s" "rock")
  '("70s" "rock")
  '("70s" "pop")
))

(define tagss (flatten tags))
(display tagss)
(newline)

(display (string-join tagss ":"))
(newline)
