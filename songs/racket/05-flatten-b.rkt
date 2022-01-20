#lang racket
(require "my-songs.rkt")
(require "my-extract.rkt")

(displayln (string-join
  (flatten (extract-songs songs)) ":"))

