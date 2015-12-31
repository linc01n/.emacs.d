(defun flush-blank-lines ()
  "Flush blank lines."
  (interactive)
  (flush-lines "^\s*$" nil nil t))

(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or `beginning-of-line'."
  (interactive)
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))
