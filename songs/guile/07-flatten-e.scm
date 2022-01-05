(add-to-load-path
  (dirname (current-filename)))
(use-modules (srfi srfi-1))
(use-modules (my-songs))

(define 
  (flatten my-songs)
  (let 
    ( (tagss
        (map
          (λ (song) (cdr (assoc "tags" song)))
          (filter
            (λ (song) (assoc "tags" song))
          my-songs))
    ) )
    (concatenate tagss)
))

(display (string-join (flatten songs) ":"))
(newline)

