#lang racket

(define tags (list
  #hash( ("tags" . ("60s" "jazz")) )
  #hash( ("tags" . ("60s" "rock")) )
  #hash( ("tags" . ("70s" "rock")) )
  #hash( ("tags" . ("70s" "pop"))  )
))

(define tagss
  (map (λ (tagss)
      (hash-ref tagss "tags"))
    tags)
)

(display tagss)(newline)

(displayln (string-join
  (flatten tagss) ":"))

