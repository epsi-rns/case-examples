(add-to-load-path
  (dirname (current-filename)))
(use-modules (my-songs))
(use-modules (my-helper-flatten))
(use-modules (my-helper-unique))

(display (string-join
  (unique (flatten songs)) ":"))
(newline)
