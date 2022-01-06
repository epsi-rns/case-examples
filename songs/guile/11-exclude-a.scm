(define tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(display (string-join (delq "rock" tags) ":"))
(newline)
