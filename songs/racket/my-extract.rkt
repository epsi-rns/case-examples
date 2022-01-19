#lang racket
(provide extract-songs)

(define (extract-songs songs)
  (filter-map (lambda (song)
    (and (hash-has-key? song "tags")
    (hash-ref song "tags"))
  ) songs))
