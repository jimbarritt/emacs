;;; Setup of color theme

;; Color themes
(add-to-list 'load-path "~/emacs/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)


(set-background-color "black")
(set-foreground-color "white")
(set-face-foreground 'modeline "#777777")
(set-face-background 'modeline "#222222")

(set-cursor-color "purple")


