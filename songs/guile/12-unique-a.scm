(use-modules (oop goops))

(define my-tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(define-method
  (unique-guard (tags <list>))
  (if
    (<= (length tags) 1)
    (tags)
    (cdr tags)
  ))

(display (unique-guard my-tags))
(newline)
