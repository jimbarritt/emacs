;;; Global key bindigns

;; I have set up my mac keyboard so that the left ALT key is a normal ALT and the right one is a CTRL.
;; I then tell emacs to use the Special (CMD) key as the meta key. This means I can do C-x-f really easily without stretching my hand!
;; I achieve this with KeyRemap4MacBook.

;; How to Define Keyboard Shortcuts in Emacs
;; http://xahlee.org/emacs/keyboard_shortcuts.html
;; http://www.gnu.org/software/emacs/manual/html_node/emacs/Init-Rebinding.html
;; See also ./jmdb/interesting_unicode_characters.txt

;; s - (s)pecial key : ⌘ 'cmd', or 'windows'
;; S - (S)hift key   : ⇧
;; M - (M)eta key    : ⌥ 'alt' - usually mapped to alt but also 'esc and not always available'
;; C - (C)ontrol key : Make sure you have switched CAPS LOCK to be your control key (System prefs, keyboard)!

;; <return> - Return
;; <left>, <right>, <up>, <down> Arrow keys
;; Note that if you don't bind them explicitly then describe-key won't tell you, so if you bind "RET" to something then ask what "<return>" is bound to, it won't know.

;; Use the following syntax:
;; (global-set-key (kbd "S-<f1>")
;; Put spaces in between multiple key sequences

;; You can see what they were by invoking
;; (describe-key (kbd "C-S"))

;; Invoke the meta key without pressing ALT
(global-set-key [C-x-C-m] 'execute-extended-command)


;; We need the option keys to work so we can swap the right option key to be a right control...
;; Swap meta and option keys:
(when (eq system-type 'darwin)
	  (setq mac-command-key-is-meta t)
	  (setq mac-command-modifier 'meta)
          (setq mac-option-modifier nil))
	 ;; (setq mac-option-key-is-meta nil)
	 ;; (setq mac-option-modifier nil)) ;; stop the "alt" key responding so it behaves like it would in the os


;;(when (eq system-type 'darwin)
  ;; * modifier keys
  ;;   - key 'command': mapped to Emacs Meta
  ;;(setq ns-command-modifier 'meta)
  ;;   - key 'option': ignored by Emacs to let the OS do AltGr
  ;;(setq ns-option-modifier 'none))

;; To kill word backwards:
;;(global-set-key (kbd "C-w") 'backward-kill-word)
;;(global-set-key (kbd "C-x C-k") 'kill-region)
;;(global-set-key (kbd "C-c C-k") 'kill-region)

;; Toggle line numbering
(global-set-key (kbd "M-s-L") 'linum-mode)

;; Insert the # key on a uk keyboard
(global-set-key (kbd "M-3") '(lambda()(interactive)(insert-pound)))

;; Insert a file name into the buffer
(global-set-key (kbd "C-c C-i") 'insert-file-name)

;; Moving between windows (already defined in windmove.el:
;; (global-set-key (kbd "<M-S-s-left>") 'windmove-left)          ; move to left window
;;(global-set-key (kbd "<M-S-s-right>") 'windmove-right)        ; move to right window
;;(global-set-key (kbd "<M-S-s-up>") 'windmove-up)              ; move to upper window
;;(global-set-key (kbd "<M-S-s-down>") 'windmove-down)          ; move to downer windowxs


;; Trying to set navigation a bit like intellij
;;(global-set-key (kbd "<M-left>") 'previous-buffer)
;;(global-set-key (kbd "<M-right>") 'next-buffer)

;; Make DEL (fn + BACKSPACE in OS X) eat up the current characters
(global-unset-key (kbd "<delete>"))
;;(global-set-key (kbd "<delete>") 'something)

;; Changing window sizes (This needs to be done for each window)
;;(global-set-key [C-s-down] 'enlarge-window)
;;(global-set-key [C-s-up] 'shrink-window)
;;(global-set-key [C-s-left] 'enlarge-window-horizontally)
;;(global-set-key [C-s-right] 'shrink-window-horizontally)

;; Switch buffers
;;(global-set-key [S-s-left] 'previous-buffer)
;;(global-set-key [S-s-right] 'next-buffer)

;; Invoke the bash terminal
(global-unset-key (kbd "M-`")) ;; Was 'tmm-menubar' found in tmm.el
(global-set-key (kbd "M-`") 'invoke-bash-terminal)

;; Open a file under the cursor
(global-set-key (kbd "M-b") 'find-file-at-point)

;; Invoke wordcount minor mode
(global-set-key "\M-+" 'word-count-mode)

;; Invoke hippie-expand
(global-set-key (kbd "<escape>")  'hippie-expand) ;; Like in textmate
(global-set-key (kbd "<M-SPC>")  'hippie-expand) ;; Like in IntelliJ


;; Add standard keyboard shortcuts for executing
(add-hook 'lisp-interaction-mode-hook
 (lambda ()
 (local-set-key (kbd "M-S-<return>") 'eval-region)
 (local-set-key (kbd "M-<return>") 'eval-last-sexp)
 )
)

(global-set-key (kbd "C-x C-g") 'magit-status)

;; Adding something so that we can commit with Magit.
