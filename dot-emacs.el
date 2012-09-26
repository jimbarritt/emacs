
;;; Jims emacs customisation wherein I shall uncover the mysteries of emacs!

;; In order to have this file loaded up, put the following in the ~/.emacs file:
;; (load “~/emacs/dot-emacs.el”)

;; Thanks and full respect due to Ryan McGeary (https://github.com/rmm5t/dotfiles)

(message "Emacs Customisation of Jim Barritt..")

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(require 'magit)

(when (not (package-installed-p 'nrepl))
  (package-install 'nrepl))

(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)
(setq nrepl-popup-stacktraces nil)
(add-to-list 'same-window-buffer-names "*nrepl*")


;; To allow window switching easy:
(defun select-next-window ()
  "Switch to the next window"
  (interactive)
  (select-window (next-window)))

(defun select-previous-window ()
  "Switch to the previous window"
  (interactive)
  (select-window (previous-window)))

(global-set-key (kbd "M-<right>") 'select-next-window)
(global-set-key (kbd "M-<left>")  'select-previous-window)

(server-start) ;; Start up the emacs server so that you can call emacsclient from the command line

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(message (format "Dotfiles-dir is %s" dotfiles-dir))

(add-to-list 'load-path "~/emacs")
(add-to-list 'load-path "~/emacs")
(add-to-list 'load-path "~/emacs/vendor")
(add-to-list 'load-path "~/emacs/maxframe")
(add-to-list 'load-path "~/.emacs.d/clojure-mode/")

(load "jmdb/global.el")
(load "jmdb/color-theme.el")
(load "jmdb/evernote.el")
(load "jmdb/bindings.el")
(load "jmdb/defuns.el")
(load "jmdb/fonts.el")
(load "jmdb/fullscreen")
(load "jmdb/line-numbering.el")
(load "jmdb/mac.el")
(load "jmdb/maxframe.el")
(load "jmdb/mode-line.el")
(load "jmdb/transparency.el")
(load "jmdb/powershell-mode.el")




(require 'lambda-mode)
(require 'window-number)
(require 'powershell-mode)

(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)

(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))



;; Git integration (make && sudo make install in the magit folder first)
;;(add-to-list 'load-path "~/emacs/magit-1.0.0")
;;(require 'magit)
(require 'git)


;; Navigation
(add-to-list 'load-path "~/emacs/emacs-nav-20110220/")
(require 'nav)
(message "Customisation completed successfully.")


;; clojure-mode
(add-to-list 'load-path "~/opt/clojure-mode")
(require 'clojure-mode)


;; Setup environment variables from the shell...
(defun env-var-from-shell (varname)
  (replace-regexp-in-string
   "[[:space:]\n]*$" ""
   (shell-command-to-string (concat "$SHELL -l -c 'echo $" varname
"'"))))


(defun setenv-from-shell (varname)
  (setenv varname (env-var-from-shell varname)))

(when window-system
  (setenv-from-shell "START_GREEN")
  (setenv-from-shell "END_GREEN")
  (setenv-from-shell "PS1")
  (setenv-from-shell "LSCOLORS")
  (setenv-from-shell "CLOJURE_EXT")
  (setenv-from-shell "CLICOLOR")
  (let ((path-from-shell (env-var-from-shell "PATH")))
    (setenv "PATH" (concat path-from-shell ":" (getenv "PATH")))
    (setq exec-path (append exec-path
                            (split-string path-from-shell path-separator)))))


