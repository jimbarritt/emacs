;;; Essential emacs settings

;; Use command as the meta key
;;(setq ns-command-modifier (quote meta))

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight matching parentheses
(show-paren-mode)

;;To stop it making a bell noise...
(setq visible-bell 1)
(setq ring-bell-function 'ignore)

;; Hide the fringes (0 hide, 1 show both)
(when (fboundp 'fringe-mode)
  (fringe-mode 1))

;; Make the cursor blink
(blink-cursor-mode)

;; Don't show the annoying startup message
(setq inhibit-startup-message t)

;; arg >= 1 enable the menu bar. Menu bar is the File, Edit, Options,
;; Buffers, Tools, Emacs-Lisp, Help
(menu-bar-mode 1)

;; Hide  scroll bars and toolbar:
;; Emacs gurus don't need no stinking scroll bars
(when (fboundp 'toggle-scroll-bar)
  (toggle-scroll-bar -1))

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 1))


;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/emacs/.backup")))
(message "Backups are being stored to ~/emacs/.backup")

;;(message ("This is two strings" . "concatenated")

;; Don't truncate lines
(setq truncate-lines t)
(setq truncate-partial-width-windows nil)

;; For emacsclient
(server-start)

;; Trailing whitespace is unnecessary
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; Trash can support
(setq delete-by-moving-to-trash t)

;; `brew install aspell --lang=en` (instead of ispell)
(setq-default ispell-program-name "aspell")
(setq ispell-list-command "list")
(setq ispell-extra-args '("--sug-mode=ultra"))

;; zap-up-to-char, forward-to-word, backward-to-word, etc
(require 'misc)

;; Set the position and size of the window:
(require 'maxframe)

;; allows syntax highlighting to work
(global-font-lock-mode 1)

;; First you want to get the fullscreen version of cocoa emacs from (http://www.stratospark.com/blog/2010/fullscreen_emacs_on_osx.html)
;; Then the following allows you to toggle between normal and fullscreen
;;(ns-toggle-fullscreen)

(when (fboundp 'ns-toggle-fullscreen)
  (add-hook 'window-setup-hook 'ns-toggle-fullscreen t))
