#lang racket
(require "my-songs.rkt")
(require "my-extract.rkt")

(display (string-join
  (flatten (extract-songs songs)) ":"))
(newline)
