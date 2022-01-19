#lang racket
(require "my-songs.rkt")

(define tagss
  (filter-map (λ (song)
    (and (hash-has-key? song "tags")
    (hash-ref song "tags"))
  ) songs))

(displayln (string-join (flatten tagss) ":"))
