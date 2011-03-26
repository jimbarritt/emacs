;;; Global key bindigns

;; How to Define Keyboard Shortcuts in Emacs
;; http://xahlee.org/emacs/keyboard_shortcuts.html

;; Invoke the meta key without pressing ALT
(global-set-key "\C-x\C-m" 'execute-extended-command)

;;(when (eq system-type 'darwin)
  ;; * modifier keys
  ;;   - key 'command': mapped to Emacs Meta
  ;;(setq ns-command-modifier 'meta)
  ;;   - key 'option': ignored by Emacs to let the OS do AltGr
  ;;(setq ns-option-modifier 'none))

;; To kill word backwards:
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; Insert the # key on a uk keyboard
(global-set-key (kbd "M-3") '(lambda()(interactive)(insert-pound)))

;; Insert a file name into the buffer
(global-set-key "\C-c\C-i" 'insert-file-name)

;; Moving between windows:
(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window

;; Changing window sizes (This needs to be done for each window
(global-set-key [C-s-down] 'enlarge-window)
(global-set-key [C-s-up] 'shrink-window)
(global-set-key [C-s-left] 'enlarge-window-horizontally)
(global-set-key [C-s-right] 'shrink-window-horizontally)

;; Switch buffers
(global-set-key [S-s-left] 'previous-buffer)
(global-set-key [S-s-right] 'next-buffer)

