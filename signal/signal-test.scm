
(signal-set-exception! *SIGUSR1*)

(with-exception-catcher
  (lambda (e)
    (if (signal-exception? e)
      (begin
        (display "Signal received: ")
        (display (cdr e))
        (newline)
        (if (= *SIGUSR1* (cdr e))
          (begin
            (display "Test passed")
            (newline)
            (exit 0))))
      (begin
        (display "Error: ")
        (pp e)
        (exit 1))))
  (lambda ()
    (send-signal (get-pid) *SIGUSR1*)
    (thread-sleep! 1)
    (display "No signals received. Test FAILED")
    (newline)))
