(add-to-load-path
  (dirname (current-filename)))
(use-modules (srfi srfi-1))
(use-modules (my-songs))

(define tagss
  (filter-map
    (λ (song) (assoc "tags" song))
     songs)
)

(map (λ (tags)
  (format #t "~a\n" (cdr tags))
) tagss)

