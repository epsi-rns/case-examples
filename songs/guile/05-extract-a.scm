(add-to-load-path 
  (dirname (current-filename)))
(use-modules (my-songs))

(for-each (λ (song)
  (if 
    (assoc "tags" song)
    (begin
      (display (assoc-ref song "tags"))
      (newline)
    )
  )
) songs)

