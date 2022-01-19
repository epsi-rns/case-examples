#lang racket

(define song #hash(
  ("title" . "Cantaloupe Island")
  ("tags" . ("60s" "jazz"))
))

(display song)
(newline)

(display (hash-ref song "tags"))
(newline)

(display (hash-has-key? song "tags"))
(newline)
