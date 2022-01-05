(add-to-load-path
  (dirname (current-filename)))
(use-modules (srfi srfi-1))
(use-modules (my-songs))

(define tags-flatten (list))

(for-each (λ (song)
  (if 
    (assoc "tags" song)
    (let 
      ((tagss (assoc-ref song "tags")))
      (set! tags-flatten
        (append tags-flatten tagss))
    )
  )
) songs)

(display (string-join
  tags-flatten ":"))
(newline)
