;;; Essential emacs settings

;; Turn on line truncation so that lines go off the page...
(setq truncate-lines 1)

;; Recent file mode
(require 'recentf)
(recentf-mode 1)

;; Make org mode start up so that it uses indentation instead of multiple stars
(setq org-startup-indented t)

;; Interactive do
(when (> emacs-major-version 21)
  (require 'ido)
  (ido-mode t)
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always
        ido-use-filename-at-point 'guess
        ido-max-prospects 10))

;; Word count in the modeline
(autoload 'word-count-mode "word-count"
           "Minor mode to count words." t nil)

;; Force it to use the same frame for new windows
(setq display-buffer nil)
(setq display-buffer-reuse-frames 1)
(setq pop-up-frames nil)


;; Use spaces instead of tab
(setq-default indent-tabs-mode nil)

;; put something different in the scratch buffer
(setq initial-scratch-message
      ";; scratch buffer created -- start typing...\n")

;; Window splitting
(setq split-width-threshold nil)
(setq split-height-threshold nil)

;; Make the minibuffer smaller
(setq max-mini-window-height 1)

;; Display line and column numbers
(setq line-number-mode    t)
(setq column-number-mode  t)

;; Explicitly show the end of a buffer
(set-default 'indicate-empty-lines t)

;; Colorised output for the shell (doesnt seem to work)
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)


;; "y or n" instead of "yes or no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Highlight matching parentheses
(show-paren-mode)

;;To stop it making a bell noise...
(setq visible-bell 1)
(setq ring-bell-function 'ignore)

;; Hide the fringes (0 hide, 1 show both)
(when (fboundp 'fringe-mode)
  (fringe-mode '(1 . 0)))

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

;; Hide the toolbar in carbon emacs
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode 1))


;; Make sure all backup files only live in one place
(defvar backup-directory (expand-file-name (concat dotfiles-dir "backups")))

(message (format "Backups are being stored to %s" backup-directory))

;;(setq backup-directory-alist backup-directory)

;;(setq auto-save-file-name-transforms
;;          `((".*" , backup-directory t)))
(setq backup-directory-alist
      `((".*" . ,backup-directory)))
   (setq auto-save-file-name-transforms
         `((".*" ,backup-directory t)))


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

