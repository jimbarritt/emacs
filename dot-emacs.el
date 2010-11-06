;; Jims emacs customisation wherein I shall uncover the mysteries of emacs!
;; In order to have this file loaded up, put the following in the ~/.emacs file:
;; (load “~/emacs/dot-emacs.el”)

(message "This is Jims' emacs customisation.")

(setq inhibit-startup-message t)

;; arg >= 1 enable the menu bar. Menu bar is the File, Edit, Options,
;; Buffers, Tools, Emacs-Lisp, Help
(menu-bar-mode 1)

;; Sort out scroll bars and toolbar:
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; In cocoa emacs, you can set the font in Options->Change default font.
(set-default-font "-apple-Consolas-medium-normal-normal--16-180-75-75-m-0-iso10646-1")


;; Set the position and size of the window:
(set-frame-position (selected-frame) 0 0)
(set-frame-height (selected-frame) 192)
(set-frame-width (selected-frame) 400)

;; Transparency
(defun djcb-opacity-modify (&optional dec)
  "modify the transparency of the emacs frame; if DEC is t,
    decrease the transparency, otherwise increase it in 10%-steps"
  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
          (oldalpha (if alpha-or-nil alpha-or-nil 100))
          (newalpha (if dec (- oldalpha 10) (+ oldalpha 10))))
    (when (and (>= newalpha frame-alpha-lower-limit) (<= newalpha 100))
      (modify-frame-parameters nil (list (cons 'alpha newalpha))))))

 ;; C-8 will increase opacity (== decrease transparency)
 ;; C-9 will decrease opacity (== increase transparency
 ;; C-0 will returns the state to normal
(global-set-key (kbd "C-8") '(lambda()(interactive)(djcb-opacity-modify)))
(global-set-key (kbd "C-9") '(lambda()(interactive)(djcb-opacity-modify t)))
(global-set-key (kbd "C-0") '(lambda()(interactive)
                               (modify-frame-parameters nil `((alpha . 100)))))


;; First you want to get the fullscreen version of cocoa emacs from (http://www.stratospark.com/blog/2010/fullscreen_emacs_on_osx.html)
;; Then the following allows you to toggle between normal and fullscreen
(global-set-key (kbd "M-RET") 'ns-toggle-fullscreen)
(ns-toggle-fullscreen)



(set-background-color "black")
(set-foreground-color "white")
(set-face-foreground 'modeline "firebrick")
(set-face-background 'modeline "black")
(set-cursor-color "purple")


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
