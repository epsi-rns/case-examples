(define tags '(
  "rock" "jazz" "rock" "pop" "pop"))

(map (lambda tag 
  (display (car tag))
  (display (cdr tag))
) tags)
(newline)

(for-each (lambda (tag)
  (display tag)
) tags)
(newline)
