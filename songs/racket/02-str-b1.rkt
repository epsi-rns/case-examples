#lang racket

(require srfi/1)

(define tags (list
  '("60s" "jazz")
  '("60s" "rock")
  '("70s" "rock")
  '("70s" "pop")
))

(define tagss (concatenate tags))
(display tagss)
(newline)

(define tags-str
  (string-join tagss ":"))
(display tags-str)
(newline)
