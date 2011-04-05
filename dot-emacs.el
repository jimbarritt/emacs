;;; Jims emacs customisation wherein I shall uncover the mysteries of emacs!

;; In order to have this file loaded up, put the following in the ~/.emacs file:
;; (load “~/emacs/dot-emacs.el”)

;; Thanks and full respect due to Ryan McGeary (https://github.com/rmm5t/dotfiles)

(message "Emacs Customisation of Jim Barritt..")


(add-to-list 'load-path "~/emacs")
(add-to-list 'load-path "~/emacs/maxframe")

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


(add-to-list 'load-path "~/emacs/vendor")

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
(add-to-list 'load-path "~/emacs/package/")
(require 'package)
(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))



