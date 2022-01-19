#lang racket
(require "my-songs.rkt")

(define tagss
  (filter-map (lambda (song)
    (and (hash-has-key? song "tags")
    (hash-ref song "tags"))
  ) songs))

(display (string-join (flatten tagss) ":"))
(newline)
