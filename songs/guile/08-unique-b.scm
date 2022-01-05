(add-to-load-path
  (dirname (current-filename)))
(use-modules (my-songs))
(use-modules (my-helper-flatten))

(define tags-flatten (flatten songs))

(define tags-unique (list))

(for-each (λ (tag)
  (unless
    (member tag tags-unique)
    (set! tags-unique
      (append tags-unique (list tag)))
  )
) tags-flatten)

(display (string-join tags-unique ":"))
(newline)

