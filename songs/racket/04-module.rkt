#lang racket
(require "my-songs.rkt")

(filter-map (lambda (song)
  (and (hash-has-key? song "tags")
  (format "~a" (hash-ref song "tags")))
) songs)

