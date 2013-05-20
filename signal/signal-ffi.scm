;; UNIX signals for Gambit-C. Low-level interface.
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

(c-declare "
#include <signal.h>
#include <sys/types.h>
#include <unistd.h>
typedef void (*SIGNAL_HANDLER)(int);
")

(c-define (raise-signal-exception sig)
          (int)
          void
          "raise_signal_exception" ""
  (raise (cons 'signal-exception sig)))

(c-declare "
static void signal_handler(int x) {
    raise_signal_exception(x);
}")

(define signal-set-exception!
  (c-lambda (int) void "signal(___arg1, signal_handler);"))

(define signal-set-ignore!
  (c-lambda (int) void "signal(___arg1, SIG_IGN);"))

(define signal-set-default!
  (c-lambda (int) void "signal(___arg1, SIG_DFL);"))

(define send-signal
  (c-lambda (unsigned-int int)
    int "___result = kill(___arg1, ___arg2);"))

(define get-pid
  (c-lambda ()
    int "___result = getpid();"))

(define get-parent-pid
  (c-lambda ()
    int "___result = getppid();"))

(define signal-SIGHUP-code (c-lambda () int "___result = SIGHUP;"))
(define signal-SIGINT-code (c-lambda () int "___result = SIGINT;"))
(define signal-SIGQUIT-code (c-lambda () int "___result = SIGQUIT;"))
(define signal-SIGILL-code (c-lambda () int "___result = SIGILL;"))
(define signal-SIGTRAP-code (c-lambda () int "___result = SIGTRAP;"))
(define signal-SIGABRT-code (c-lambda () int "___result = SIGABRT;"))
(define signal-SIGBUS-code (c-lambda () int "___result = SIGBUS;"))
(define signal-SIGFPE-code (c-lambda () int "___result = SIGFPE;"))
(define signal-SIGKILL-code (c-lambda () int "___result = SIGKILL;"))
(define signal-SIGUSR1-code (c-lambda () int "___result = SIGUSR1;"))
(define signal-SIGSEGV-code (c-lambda () int "___result = SIGSEGV;"))
(define signal-SIGUSR2-code (c-lambda () int "___result = SIGUSR2;"))
(define signal-SIGPIPE-code (c-lambda () int "___result = SIGPIPE;"))
(define signal-SIGALRM-code (c-lambda () int "___result = SIGALRM;"))
(define signal-SIGTERM-code (c-lambda () int "___result = SIGTERM;"))
(define signal-SIGSTKFLT-code (c-lambda () int "___result = SIGSTKFLT;"))
(define signal-SIGCHLD-code (c-lambda () int "___result = SIGCHLD;"))
(define signal-SIGCONT-code (c-lambda () int "___result = SIGCONT;"))
(define signal-SIGSTOP-code (c-lambda () int "___result = SIGSTOP;"))
(define signal-SIGTSTP-code (c-lambda () int "___result = SIGTSTP;"))
(define signal-SIGTTIN-code (c-lambda () int "___result = SIGTTIN;"))
(define signal-SIGTTOU-code (c-lambda () int "___result = SIGTTOU;"))
(define signal-SIGURG-code (c-lambda () int "___result = SIGURG;"))
(define signal-SIGXCPU-code (c-lambda () int "___result = SIGXCPU;"))
(define signal-SIGXFSZ-code (c-lambda () int "___result = SIGXFSZ;"))
(define signal-SIGVTALRM-code (c-lambda () int "___result = SIGVTALRM;"))
(define signal-SIGPROF-code (c-lambda () int "___result = SIGPROF;"))
(define signal-SIGWINCH-code (c-lambda () int "___result = SIGWINCH;"))
(define signal-SIGIO-code (c-lambda () int "___result = SIGIO;"))
(define signal-SIGPWR-code (c-lambda () int "___result = SIGPWR;"))
(define signal-SIGSYS-code (c-lambda () int "___result = SIGSYS;"))
(define signal-SIGRTMIN-code (c-lambda () int "___result = SIGRTMIN;"))
(define signal-SIGRTMIN+1-code (c-lambda () int "___result = SIGRTMIN+1;"))
(define signal-SIGRTMIN+2-code (c-lambda () int "___result = SIGRTMIN+2;"))
(define signal-SIGRTMIN+3-code (c-lambda () int "___result = SIGRTMIN+3;"))
(define signal-SIGRTMIN+4-code (c-lambda () int "___result = SIGRTMIN+4;"))
(define signal-SIGRTMIN+5-code (c-lambda () int "___result = SIGRTMIN+5;"))
(define signal-SIGRTMIN+6-code (c-lambda () int "___result = SIGRTMIN+6;"))
(define signal-SIGRTMIN+7-code (c-lambda () int "___result = SIGRTMIN+7;"))
(define signal-SIGRTMIN+8-code (c-lambda () int "___result = SIGRTMIN+8;"))
(define signal-SIGRTMIN+9-code (c-lambda () int "___result = SIGRTMIN+9;"))
(define signal-SIGRTMIN+10-code (c-lambda () int "___result = SIGRTMIN+10;"))
(define signal-SIGRTMIN+11-code (c-lambda () int "___result = SIGRTMIN+11;"))
(define signal-SIGRTMIN+12-code (c-lambda () int "___result = SIGRTMIN+12;"))
(define signal-SIGRTMIN+13-code (c-lambda () int "___result = SIGRTMIN+13;"))
(define signal-SIGRTMIN+14-code (c-lambda () int "___result = SIGRTMIN+14;"))
(define signal-SIGRTMIN+15-code (c-lambda () int "___result = SIGRTMIN+15;"))
(define signal-SIGRTMAX-14-code (c-lambda () int "___result = SIGRTMAX-14;"))
(define signal-SIGRTMAX-13-code (c-lambda () int "___result = SIGRTMAX-13;"))
(define signal-SIGRTMAX-12-code (c-lambda () int "___result = SIGRTMAX-12;"))
(define signal-SIGRTMAX-11-code (c-lambda () int "___result = SIGRTMAX-11;"))
(define signal-SIGRTMAX-10-code (c-lambda () int "___result = SIGRTMAX-10;"))
(define signal-SIGRTMAX-9-code (c-lambda () int "___result = SIGRTMAX-9;"))
(define signal-SIGRTMAX-8-code (c-lambda () int "___result = SIGRTMAX-8;"))
(define signal-SIGRTMAX-7-code (c-lambda () int "___result = SIGRTMAX-7;"))
(define signal-SIGRTMAX-6-code (c-lambda () int "___result = SIGRTMAX-6;"))
(define signal-SIGRTMAX-5-code (c-lambda () int "___result = SIGRTMAX-5;"))
(define signal-SIGRTMAX-4-code (c-lambda () int "___result = SIGRTMAX-4;"))
(define signal-SIGRTMAX-3-code (c-lambda () int "___result = SIGRTMAX-3;"))
(define signal-SIGRTMAX-2-code (c-lambda () int "___result = SIGRTMAX-2;"))
(define signal-SIGRTMAX-1-code (c-lambda () int "___result = SIGRTMAX-1;"))
(define signal-SIGRTMAX-code (c-lambda () int "___result = SIGRTMAX;"))
