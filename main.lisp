(defun every-second ()
  (princ ".")
  (sleep 1))

(loop
  (every-second))
