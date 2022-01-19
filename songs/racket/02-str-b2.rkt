#lang racket

(define tags (list
  '("60s" "jazz")
  '("60s" "rock")
  '("70s" "rock")
  '("70s" "pop")
))

(define tagss (flatten tags))
(displayln tagss)

(displayln (string-join tagss ":"))
