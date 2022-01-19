#lang racket
(require "my-songs.rkt")

(define my-chan (make-channel))

(define (receiver chan)
  (define tags (list))
  (let loop ()
    (define item (channel-get chan))
    (if (null? item)
        tags
        (begin
          (set! tags (
            append tags (list item)))
          (loop))
  ))
)

(define (sender chan songs)
  (begin
    (for-each (lambda (song)
      (when
        (hash-has-key? song "tags")
        (for-each (lambda (tag)
          (channel-put my-chan tag))
          (hash-ref song "tags")))
      ) songs)
    (channel-put my-chan null)
  )
)

;; program entry point

(define my-thread (thread
  (lambda () (displayln (string-join
    (remove-duplicates
    (flatten
      (receiver my-chan))) ":")
  ))))
(sender my-chan songs)
(thread-wait my-thread)

