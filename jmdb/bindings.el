;;; Global key bindigns

;; How to Define Keyboard Shortcuts in Emacs
;; http://xahlee.org/emacs/keyboard_shortcuts.html
;; See also /jmdb/interesting_unicode_characters.txt

;; S - (S)pecial key : ⌘ 'cmd', or 'windows'
;; s - (s)hift key   : ⇧
;; M - (M)eta key    : ⌥ 'alt' - usually mapped to alt but also 'esc and not always available'
;; C - (C)ontrol key : Make sure you have switched CAPS LOCK to be your control key (System prefs, keyboard)!

;; You declare them inside brackets, e.g. [<modifier>-<key>-<modifier>-<key>]
;; e.g. [C-s-x] would be CTRL+SHIFT+X

;; You can see what they were by invoking
;; (describe-key (kbd "C-s-x"))

;; Invoke the meta key without pressing ALT
(global-set-key [C-x-C-m] 'execute-extended-command)

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

;; Moving between windows (already defined in windmove.el:
(global-set-key (kbd "<M-S-s-left>") 'windmove-left)          ; move to left window
(global-set-key (kbd "<M-S-s-right>") 'windmove-right)        ; move to right window
(global-set-key (kbd "<M-S-s-up>") 'windmove-up)              ; move to upper window
(global-set-key (kbd "<M-S-s-down>") 'windmove-down)          ; move to downer window

;; Make DEL (fn + BACKSPACE in OS X) eat up the current characters
(global-unset-key (kbd "<delete>"))
;;(global-set-key (kbd "DEL") 'something)

;; Changing window sizes (This needs to be done for each window)
(global-set-key [C-s-down] 'enlarge-window)
(global-set-key [C-s-up] 'shrink-window)
(global-set-key [C-s-left] 'enlarge-window-horizontally)
(global-set-key [C-s-right] 'shrink-window-horizontally)

;; Switch buffers
;;(global-set-key [S-s-left] 'previous-buffer)
;;(global-set-key [S-s-right] 'next-buffer)

;; Invoke the bash terminal
(global-unset-key (kbd "M-`")) ;; Was 'tmm-menubar' found in tmm.el
(global-set-key (kbd "M-`") 'invoke-bash-terminal)

;; Open a file under the cursor
(global-set-key (kbd "s-b") 'find-file-at-point)

