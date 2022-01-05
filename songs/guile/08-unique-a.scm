(add-to-load-path
  (dirname (current-filename)))
(use-modules (srfi srfi-1))
(use-modules (my-songs))

(define tags-unique (list))

(for-each (λ (song)
  (if (assoc "tags" song)
      (let ((song-tags (assoc-ref song "tags")))
            (for-each (λ (tag)
              (unless (member tag tags-unique)
                (set! tags-unique
                  (append tags-unique
                    (list tag))))
            ) song-tags))
  )) songs)

(display (string-join tags-unique ":"))
(newline)
