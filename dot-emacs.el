;;; Jims emacs customisation wherein I shall uncover the mysteries of emacs!

;; In order to have this file loaded up, put the following in the ~/.emacs file:
;; (load “~/emacs/dot-emacs.el”)

;; Thanks and full respect due to Ryan McGeary (https://github.com/rmm5t/dotfiles)

(message "Emacs Customisation of Jim Barritt..")

(server-start) ;; Start up the emacs server so that you can call emacsclient from the command line

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(message (format "Dotfiles-dir is %s" dotfiles-dir))

(add-to-list 'load-path "~/emacs")
(add-to-list 'load-path "~/emacs/vendor")
(add-to-list 'load-path "~/emacs/maxframe")
(add-to-list 'load-path "~/.emacs.d/elpa/clojure-mode-1.7.1/")

(load "jmdb/global.el")
(load "jmdb/bindings.el")
(load "jmdb/defuns.el")
(load "jmdb/fonts.el")
(load "jmdb/fullscreen")
(load "jmdb/line-numbering.el")
(load "jmdb/mac.el")
(load "jmdb/maxframe.el")
(load "jmdb/mode-line.el")
(load "jmdb/transparency.el")

(ns-toggle-fullscreen)


(require 'window-number)

;; Color themes
(add-to-list 'load-path "~/emacs/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)


;; Git integration (make && sudo make install in the magit folder first)
(add-to-list 'load-path "~/emacs/magit-1.0.0")
(require 'magit)

;; Navigation
(add-to-list 'load-path "~/emacs/emacs-nav-20110220/")
(require 'nav)
(message "Customisation completed successfully.")

;; Packages
(add-to-list 'load-path "~/emacs/elpa/package/")
(require 'package)

;; Swank clojure:

(setq swank-clojure-classpath '("~/.swank-clojure/clojure.jar" "~/.swank-clojure/cloure-contrib.jar"
"~/.swank-clojure/swank-clojure.jar"))



