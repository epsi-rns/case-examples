(use-modules (oop goops))

(define my-tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(define-method
  (unique-var (tags <list>))
  (if
    (<= (length tags) 1)
    (tags)
    (let
      ( (head (car tags)) (tail (cdr tags)) )
      (let ( (xcld (delq head tail)) )
        (begin
          (display head) (newline)
          (display tail) (newline)
          (display xcld) (newline)
)))))

(unique-var my-tags)
