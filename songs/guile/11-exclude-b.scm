(define tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(define
  (delq-clone value tags)
  (delq value tags)
)

(display (string-join (delq-clone "rock" tags) ":"))
(newline)
