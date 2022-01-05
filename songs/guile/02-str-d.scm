(use-modules (srfi srfi-1))

(define tags (list
  '( ("tags" . ("60s" "jazz")) )
  '( ("tags" . ("60s" "rock")) )
  '( ("tags" . ("70s" "rock")) )
  '( ("tags" . ("70s" "pop"))  )
))

(define tagss
  (map
    (λ (tagss) (assoc-ref tagss "tags"))
    tags)
)

(display tagss)
(newline)

(display (string-join
  (concatenate tagss) ":"))
(newline)
