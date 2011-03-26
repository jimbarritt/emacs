;;; Global key bindigns

;; How to Define Keyboard Shortcuts in Emacs
;; http://xahlee.org/emacs/keyboard_shortcuts.html

;; Invoke the meta key without pressing ALT
(global-set-key "\C-x\C-m" 'execute-extended-command)

;; To kill word backwards:
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; Insert the # key on a uk keyboard
(global-set-key (kbd "M-3") '(lambda()(interactive)(insert-pound)))

;; Insert a file name into the buffer
(global-set-key "\C-c\C-i" 'insert-file-name)

