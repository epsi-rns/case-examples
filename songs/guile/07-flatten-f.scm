(add-to-load-path
  (dirname (current-filename)))
(use-modules (my-songs))
(use-modules (my-helper-flatten))

(display (string-join (flatten songs) ":"))
(newline)

