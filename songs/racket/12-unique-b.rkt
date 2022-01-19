#lang racket
(require "my-songs.rkt")
(require "my-extract.rkt")
(require "my-unique.rkt")

(displayln (string-join
  (unique-tags
  (flatten
  (extract-songs songs))) ":"))

