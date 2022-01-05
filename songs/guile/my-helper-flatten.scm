(define-module (my-helper-flatten))
(use-modules (srfi srfi-1))

(define-public (flatten my-songs)
  (let ((tagss
    (map (λ (song) (cdr (assoc "tags" song)))
      (filter (λ (song) (assoc "tags" song))
      my-songs))
    ))
    (concatenate tagss)))
