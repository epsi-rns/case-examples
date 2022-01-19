#lang racket
(require "my-songs.rkt")

(filter-map (λ (song)
  (and (hash-has-key? song "tags")
  (format "~a" (hash-ref song "tags")))
) songs)

