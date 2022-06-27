#!/usr/local/bin/clisp

(defun my-args ()
  (or
    #+SBCL *posix-argv*
    #+CLISP *args*
    nil))

(defun main (time)
  (loop for i from 1 to time do
        (princ ".")
        (sleep 1))
  (format t "~d SECONDS ENDED" time))

(defvar *time* (parse-integer (first (my-args)) :junk-allowed t))

(cond
  (*time* (main *time*))
  (t (format t "~% no no Robisz To Zle")))
