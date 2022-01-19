#lang racket

(define chan (make-channel))

(define (receiver)
  (define item (channel-get chan))
  (if
    (null? item)
    (display
       (format "Thread done\n"))
    (begin
      (display
        (format "Thread processed ~a\n" item))
      (receiver))
  ))

(define my-thread (thread (lambda () (receiver))))
(for ([item '(A B C D E F G H)])
  (channel-put chan item))
(channel-put chan null)
(thread-wait my-thread)
