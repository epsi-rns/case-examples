#lang racket
(require "my-songs.rkt")
(require "my-extract.rkt")

(display (string-join
  (remove-duplicates
  (flatten
  (extract-songs songs))) ":"))
(newline)
