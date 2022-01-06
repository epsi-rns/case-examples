(use-modules (oop goops))

(define my-tags (list
  "rock" "jazz" "rock" "pop" "pop"))

(define-method
  (unique (tags <list>))
  (if
    (<= (length tags) 1)
    (begin
      (display tags) (newline)
      tags)
    (let
      ( (head (car tags)) (tail (cdr tags)) )
      (let 
        ( (xcld (delq head tail)) )
        (let
          ( (uniq (unique xcld)) )
          (begin
            (display (append (list head) uniq))
            (newline)
            (append (list head) uniq)
))))))

(unique my-tags)
(newline)
