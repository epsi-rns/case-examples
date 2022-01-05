(define-module (my-songs))

(define-public songs (list
 '( ("title" . "Cantaloupe Island")
    ("tags" . (list "60s" "jazz")) )
 '( ("title" . "Let It Be")
    ("tags" . (list "60s" "rock")) )
 '( ("title" . "Knockin' on Heaven's Door")
    ("tags" . (list "70s" "rock")) )
 '( ("title" . "Emotion")
    ("tags" . (list "70s" "pop")) )
 '( ("title" . "The River") )
))

(use-modules (my-songs))

(map (lambda (song)
  (format #t "~a\n" (assoc "tags" song))
) songs)

