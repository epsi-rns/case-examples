#lang racket

(define (receiver chan)
  (define tags (list))
  (let loop ()
    (define item (channel-get chan))
    (if (null? item)
        tags
        (begin
          (set! tags
            (append tags (list item)))
          (loop)))))

(define (sender chan songs)
  (begin
    (for-each (λ (song)
      (when
        (hash-has-key? song "tags")
        (for-each (λ (tag)
          (channel-put chan tag))
          (hash-ref song "tags")))
      ) songs)
    (channel-put chan null)))

;; program entry point
(require "my-songs.rkt")

(define my-chan (make-channel))

(define my-thread (thread
  (λ () (displayln (string-join
    (remove-duplicates
    (flatten
      (receiver my-chan))) ":")
))))
(sender my-chan songs)
(thread-wait my-thread)
