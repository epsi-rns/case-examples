(add-to-load-path
  (dirname (current-filename)))
(use-modules (my-helper-unique))

(define my-tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(display (string-join (unique my-tags) ":"))
(newline)
