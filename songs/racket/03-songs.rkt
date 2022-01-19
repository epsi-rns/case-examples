#lang racket

(define songs (list
 #hash( ("title" . "Cantaloupe Island")
        ("tags" . ("60s" "jazz")) )
 #hash( ("title" . "Let It Be")
        ("tags" . ("60s" "rock")) )
 #hash( ("title" . "Knockin' on Heaven's Door")
        ("tags" . ("70s" "rock")) )
 #hash( ("title" . "Emotion")
        ("tags" . ("70s" "pop")) )
 #hash( ("title" . "The River") )
))

(filter-map (λ (song)
  (and (hash-has-key? song "tags")
  (format "~a" (hash-ref song "tags")))
) songs)
