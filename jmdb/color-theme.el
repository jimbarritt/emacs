;;; Setup of color theme

;; Color themes
(add-to-list 'load-path "~/emacs/color-theme")
(require 'color-theme)
(color-theme-initialize)

;;(color-theme-gnome)
;;(color-theme-billw)
(color-theme-charcoal-black)
;;(color-theme-greiner)
;;(color-theme-snowish)
;;(color-theme-gtk-ide)
;;(color-theme-lawrence)

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
(set-face-background 'fringe "#222222") ;;#222222, #111111


(set-cursor-color "purple")

;;(set-face-background 'hl-line "#222222")
;;(add-hook 'clojure-mode-hook (lambda () (hl-line-mode 1)))

(add-hook 'window-setup-hook (lambda () (set-cursor-color "purple")))



;; Disable boldness in all fonts:
(mapc
  (lambda (face)
    (set-face-attribute face nil :weight 'normal :underline nil))
  (face-list))
