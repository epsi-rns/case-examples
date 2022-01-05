(add-to-load-path
  (dirname (current-filename)))
(use-modules (srfi srfi-1))
(use-modules (my-songs))

(define tags-flatten (list))

(for-each (λ (song)
  (if 
    (assoc "tags" song)
    (set! tags-flatten (append tags-flatten
      (assoc-ref song "tags")))
  )
) songs)

(display (string-join
  tags-flatten ":"))
(newline)
