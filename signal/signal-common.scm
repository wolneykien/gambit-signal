;; UNIX signals for Gambit-C. High-level interface.
;;
;; Copyright (C) 2013 Paul Wolneykien <manowar@altlinux.org>
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(define *SIGHUP* (signal-SIGHUP-code))
(define *SIGINT* (signal-SIGINT-code))
(define *SIGQUIT* (signal-SIGQUIT-code))
(define *SIGILL* (signal-SIGILL-code))
(define *SIGTRAP* (signal-SIGTRAP-code))
(define *SIGABRT* (signal-SIGABRT-code))
(define *SIGBUS* (signal-SIGBUS-code))
(define *SIGFPE* (signal-SIGFPE-code))
(define *SIGKILL* (signal-SIGKILL-code))
(define *SIGUSR1* (signal-SIGUSR1-code))
(define *SIGSEGV* (signal-SIGSEGV-code))
(define *SIGUSR2* (signal-SIGUSR2-code))
(define *SIGPIPE* (signal-SIGPIPE-code))
(define *SIGALRM* (signal-SIGALRM-code))
(define *SIGTERM* (signal-SIGTERM-code))
(define *SIGSTKFLT* (signal-SIGSTKFLT-code))
(define *SIGCHLD* (signal-SIGCHLD-code))
(define *SIGCONT* (signal-SIGCONT-code))
(define *SIGSTOP* (signal-SIGSTOP-code))
(define *SIGTSTP* (signal-SIGTSTP-code))
(define *SIGTTIN* (signal-SIGTTIN-code))
(define *SIGTTOU* (signal-SIGTTOU-code))
(define *SIGURG* (signal-SIGURG-code))
(define *SIGXCPU* (signal-SIGXCPU-code))
(define *SIGXFSZ* (signal-SIGXFSZ-code))
(define *SIGVTALRM* (signal-SIGVTALRM-code))
(define *SIGPROF* (signal-SIGPROF-code))
(define *SIGWINCH* (signal-SIGWINCH-code))
(define *SIGIO* (signal-SIGIO-code))
(define *SIGPWR* (signal-SIGPWR-code))
(define *SIGSYS* (signal-SIGSYS-code))
(define *SIGRTMIN* (signal-SIGRTMIN-code))
(define *SIGRTMIN+1* (signal-SIGRTMIN+1-code))
(define *SIGRTMIN+2* (signal-SIGRTMIN+2-code))
(define *SIGRTMIN+3* (signal-SIGRTMIN+3-code))
(define *SIGRTMIN+4* (signal-SIGRTMIN+4-code))
(define *SIGRTMIN+5* (signal-SIGRTMIN+5-code))
(define *SIGRTMIN+6* (signal-SIGRTMIN+6-code))
(define *SIGRTMIN+7* (signal-SIGRTMIN+7-code))
(define *SIGRTMIN+8* (signal-SIGRTMIN+8-code))
(define *SIGRTMIN+9* (signal-SIGRTMIN+9-code))
(define *SIGRTMIN+10* (signal-SIGRTMIN+10-code))
(define *SIGRTMIN+11* (signal-SIGRTMIN+11-code))
(define *SIGRTMIN+12* (signal-SIGRTMIN+12-code))
(define *SIGRTMIN+13* (signal-SIGRTMIN+13-code))
(define *SIGRTMIN+14* (signal-SIGRTMIN+14-code))
(define *SIGRTMIN+15* (signal-SIGRTMIN+15-code))
(define *SIGRTMAX-14* (signal-SIGRTMAX-14-code))
(define *SIGRTMAX-13* (signal-SIGRTMAX-13-code))
(define *SIGRTMAX-12* (signal-SIGRTMAX-12-code))
(define *SIGRTMAX-11* (signal-SIGRTMAX-11-code))
(define *SIGRTMAX-10* (signal-SIGRTMAX-10-code))
(define *SIGRTMAX-9* (signal-SIGRTMAX-9-code))
(define *SIGRTMAX-8* (signal-SIGRTMAX-8-code))
(define *SIGRTMAX-7* (signal-SIGRTMAX-7-code))
(define *SIGRTMAX-6* (signal-SIGRTMAX-6-code))
(define *SIGRTMAX-5* (signal-SIGRTMAX-5-code))
(define *SIGRTMAX-4* (signal-SIGRTMAX-4-code))
(define *SIGRTMAX-3* (signal-SIGRTMAX-3-code))
(define *SIGRTMAX-2* (signal-SIGRTMAX-2-code))
(define *SIGRTMAX-1* (signal-SIGRTMAX-1-code))
(define *SIGRTMAX* (signal-SIGRTMAX-code))

(define (signal-exception? e)
  (and (pair? e) (eq? 'signal-exception (car e))))

(define (signal-exception-number e)
  (cdr e))
