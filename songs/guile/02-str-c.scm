(use-modules (srfi srfi-1))

(define tags (list
  (cons "tags" (list "60s" "jazz"))
  (cons "tags" (list "60s" "rock"))
  (cons "tags" (list "70s" "rock"))
  (cons "tags" (list "70s" "pop"))
))

(define tagss
  (map
    (λ (tagss) (cdr tagss))
    tags)
)

(display tagss)
(newline)

(display (string-join
  (concatenate tagss) ":"))
(newline)
