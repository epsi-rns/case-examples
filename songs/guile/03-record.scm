(define song '(
  ("title" . "Cantaloupe Island")
  ("tags" . (list "60s" "jazz"))
))

(display song)
(newline)

(display (car song))
(newline)

(display (cdr (assoc "tags" song)))
(newline)
