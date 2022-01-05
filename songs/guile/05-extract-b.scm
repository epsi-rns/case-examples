(add-to-load-path
  (dirname (current-filename)))
(use-modules (srfi srfi-1))
(use-modules (my-songs))

(define tagss
  (map
    (λ (song) (assoc-ref song "tags"))
    (filter
      (λ (song) (assoc "tags" song))
    songs))
)

(map (λ (tags)
  (format #t "~a\n" tags)
) tagss)
