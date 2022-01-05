(add-to-load-path 
  (dirname (current-filename)))
(use-modules (my-songs))

(map (λ (song)
  (if 
    (assoc "tags" song)
    (begin
      (display (assoc-ref song "tags"))
      (newline)
    )
  )
) songs)

