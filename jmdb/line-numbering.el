;;; Add line numbers to the left hand side of the editor

(load "~/emacs/linum.el")
;;(global-linum-mode)
(column-number-mode)
(setq linum-format "%3d ")
(set-face-foreground 'linum "PaleGreen3")
