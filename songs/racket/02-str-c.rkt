#lang racket

(define tags (list
  (cons "tags" (list "60s" "jazz"))
  (cons "tags" (list "60s" "rock"))
  (cons "tags" (list "70s" "rock"))
  (cons "tags" (list "70s" "pop"))
))

(define tagss
  (map (λ (tagss)
      (list-tail tagss 1))
    tags)
)

(display tagss)(newline)

(displayln (string-join
  (flatten tagss) ":"))
