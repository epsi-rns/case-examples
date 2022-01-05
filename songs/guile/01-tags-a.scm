(define tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(define tags-str
  (string-join tags ":"))
(display tags-str)
(newline)

(format #t "Head: ~s\n" (car tags))
(format #t "Tail: ~a\n" (cdr tags))

(map display tags)
(newline)
