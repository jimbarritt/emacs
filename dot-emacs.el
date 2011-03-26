;;; Jims emacs customisation wherein I shall uncover the mysteries of emacs!

;; In order to have this file loaded up, put the following in the ~/.emacs file:
;; (load “~/emacs/dot-emacs.el”)

;; Thanks and full respect due to Ryan McGeary (https://github.com/rmm5t/dotfiles)

(message "Emacs Customisation of Jim Barritt..")

(add-to-list 'load-path "~/emacs")

(load "jmdb/global.el")
(load "jmdb/bindings.el")
(load "jmdb/defuns.el")
;;(load "jmdb/docbook.el")
(load "jmdb/fonts.el")
(load "jmdb/line-numbering.el")
(load "jmdb/mac.el")
(load "jmdb/mode-line.el")
(load "jmdb/transparency.el")

;; Set the position and size of the window:
(set-frame-position (selected-frame) 0 0)
(set-frame-height (selected-frame) 192)
(set-frame-width (selected-frame) 400)


;; First you want to get the fullscreen version of cocoa emacs from (http://www.stratospark.com/blog/2010/fullscreen_emacs_on_osx.html)
;; Then the following allows you to toggle between normal and fullscreen
(ns-toggle-fullscreen)



;;Color themes
(add-to-list 'load-path "~/emacs/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

;; allows syntax highlighting to work
(global-font-lock-mode 1)

;; Git integration (make && sudo make install in the magit folder first)
(add-to-list 'load-path "~/emacs/magit-1.0.0")
(require 'magit)

;; Navigation
(add-to-list 'load-path "~/emacs/emacs-nav-20110220/")
(require 'nav)
(message "Customisation completed successfully.")
