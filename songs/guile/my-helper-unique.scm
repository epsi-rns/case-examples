(define-module (my-helper-unique))

(define-public (unique tags)
  (if (<= (length tags) 1)
    tags
    (let
      ( (head (car tags)) (tail (cdr tags)) )
      (append (list head)
        (unique (delq head tail)))
)))
