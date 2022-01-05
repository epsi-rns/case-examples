(use-modules (srfi srfi-1))

(define tags (list
  "rock" "jazz" "rock" "pop" "pop"))


(define tags-clone
  (concatenate tags)
)

(display tags)
(newline)

(display tags-clone)
(newline)

(define tags-str
  (string-join tags ":"))
(display tags-str)
(newline)
