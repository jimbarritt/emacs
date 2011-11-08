;;; Setup of color theme

;; Color themes
(add-to-list 'load-path "~/emacs/color-theme")
(require 'color-theme)
(color-theme-initialize)

;;(color-theme-gnome)
(color-theme-charcoal-black)

;; Jims' Customisations:

;; Diff mode:
(custom-set-faces
 '(diff-added ((t (:foreground "Green"))) 'now)
 '(diff-removed ((t (:foreground "Red"))) 'now)
 )

;; The modeline:

(custom-set-faces
   '(mode-line ((t (:foreground "#777777" :background "#222222" :box nil))))
   '(mode-line-inactive ((t (:foreground "#555555" :background "#222222" :box nil)))))

;; Can set them individually like this:
;; (set-face-foreground 'modeline "#777777")

;; The edge of the screen
(set-face-background 'fringe "#111111")


(set-cursor-color "purple")

(add-hook 'clojure-mode-hook (lambda () (hl-line-mode 1)))
;;(set-face-background 'hl-line "#333333")

(add-hook 'window-setup-hook (lambda () (set-cursor-color "purple")))



