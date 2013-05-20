
(define *signum* *SIGUSR1*)
(signal-set-exception! *signum*)

(with-exception-catcher
  (lambda (e)
    (if (signal-exception? e)
      (begin
        (display "Signal received: ")
        (display (cdr e))
        (newline)
        (if (= *signum* (cdr e))
          (begin
            (display "Test passed")
            (newline)
            (exit 0)))
	(display "Test FAILED")
	(newline)
	(exit 1))
      (begin
        (display "Error: ")
        (pp e)
        (exit 1))))
  (lambda ()
    (display "Sending signal: ")
    (display *signum*)
    (newline)
    (send-signal (get-pid) *signum*)
    (thread-sleep! 1)
    (display "No signals received. Test FAILED")
    (newline)))
