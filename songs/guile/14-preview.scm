(add-to-load-path
  (dirname (current-filename)))
(use-modules (srfi srfi-1))
(use-modules (my-songs))

(define (flatten my-songs)
  (let ((tagss
    (map (λ (song) (cdr (assoc "tags" song)))
      (filter (λ (song) (assoc "tags" song))
      my-songs))
    ))
    (concatenate tagss)))

(define (unique tags)
  (if (<= (length tags) 1)
    tags
    (let
      ( (head (car tags)) (tail (cdr tags)) )
      (append (list head)
        (unique (delq head tail)))
)))

(display (string-join
  (unique (flatten songs)) ":"))
(newline)
