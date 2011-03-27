;;; Custom function definitions

(defun insert-pound ()
  "Inserts a pound into the buffer"
  (insert "#"))

;; Pretty prints the whole buffer
(defun iwb ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;; Insert a file-name at a point in the file
(defun insert-file-name (filename &optional args)
  "Insert name of file FILENAME into buffer after point.

  Prefixed with \\[universal-argument], expand the file name to
  its fully canocalized path.  See `expand-file-name'.

  Prefixed with \\[negative-argument], use relative path to file
  name from current directory, `default-directory'.  See
  `file-relative-name'.

  The default with no prefix is to insert the file name exactly as
  it appears in the minibuffer prompt."
  ;; Based on insert-file in Emacs -- ashawley 20080926
  (interactive "*fInsert file name: \nP")
  (cond ((eq '- args)
         (insert (file-relative-name filename)))
        ((not (null args))
         (insert (expand-file-name filename)))
        (t
         (insert filename))))


(defun reload-dot-emacs ()
  "Save the .emacs buffer if needed, then reload .emacs."
  (interactive)
  (let ((dot-emacs "~/.emacs"))
    (and (get-file-buffer dot-emacs)
         (save-buffer (get-file-buffer dot-emacs)))
    (load-file dot-emacs))
  (message "Re-initialized!"))


(defun project ()
  "Sets up for a project type view"
  (interactive)
  (split-window-vertically)
  (nav)
  (windmove-right)
  (enlarge-window 10)
  (windmove-down)
  (switch-to-buffer "*Help*")
  (switch-to-buffer "*ansi-term*")
  (switch-to-buffer "*Completions*")
  (switch-to-buffer "*Messages*")
  (windmove-up)
  (windmove-left)
)

(defun invoke-bash-terminal ()
  "Runs ansi-term with the default set to bash so you don't have to press enter"
  (interactive)
  (ansi-term "/bin/bash")
)

