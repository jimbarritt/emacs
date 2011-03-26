;;; Settings for the mode line

;; Prevent it having a 3D box
(set-face-attribute 'mode-line nil :box nil)


;; Display the time in the mode bar.
;; http://www.emacswiki.org/emacs/DisplayTime 

(defface egoge-display-time
   '((((type x w32 mac))
      ;; #060525 is the background colour of my default face.
      (:foreground "#060525" :inherit bold))
     (((type tty))
      (:foreground "blue")))
   "Face used to display the time in the mode line.")
 ;; This causes the current time in the mode line to be displayed in
 ;; `egoge-display-time-face' to make it stand out visually.
 (setq display-time-string-forms
       '((propertize (concat " " 24-hours ":" minutes " ")
 		    'face 'egoge-display-time)))

;; Display the time in the mode line:
(display-time-mode 1)

