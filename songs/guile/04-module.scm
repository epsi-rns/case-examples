(add-to-load-path
  (dirname (current-filename)))
(use-modules (my-songs))

(map (lambda (song)
  (format #t "~a\n" (assoc "tags" song))
) songs)

