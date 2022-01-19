#lang racket

(define song #hash(
  ("title" . "Cantaloupe Island")
  ("tags" . ("60s" "jazz"))
))

(displayln song)
(displayln (hash-ref song "tags"))
(displayln (hash-has-key? song "tags"))
