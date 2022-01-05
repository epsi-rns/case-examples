(define my-tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(define (unique tags)
  (if (<= (length tags) 1)
    tags
    (let
      ( (head (car tags)) (tail (cdr tags)) )
      (append (list head)
        (unique (delq head tail)))
)))

(display (string-join (unique my-tags) ":"))
(newline)
