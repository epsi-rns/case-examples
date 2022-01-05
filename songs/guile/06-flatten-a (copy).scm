(add-to-load-path
  (dirname (current-filename)))
(use-modules (srfi srfi-1))
(use-modules (my-songs))

(define tagss
  (map
    (λ (song) (cdr (assoc "tags" song)))
    (filter
      (λ (song) (assoc "tags" song))
    songs))
)

(display tagss)
(newline)

(define tags-flatten
  (concatenate tagss))
(display (string-join
  tags-flatten ":"))
(newline)

