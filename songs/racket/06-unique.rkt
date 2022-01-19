#lang racket
(require "my-songs.rkt")
(require "my-extract.rkt")

(displayln (string-join
  (remove-duplicates
  (flatten
  (extract-songs songs))) ":"))
