;; Jims emacs customisation wherein I shall uncover the mysteries of emacs!
;; In order to have this file loaded up, put the following in the ~/.emacs file:
;; (load “~/emacs/dot-emacs.el”)

(message "This is Jims' emacs customisation.")

;;Adding ctrl+c ctrl+m to replace option key:
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;;To kill word backwards:
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;;To be able to do meta withouth ALT key:
(global-set-key "\C-x\C-m" 'execute-extended-command) 

;;To stop it making a bell noise...
(setq visible-bell 1)
(setq ring-bell-function 'ignore)

;; Loading docbook:
;;(load "~/emacs/docbook-xml-mode.el")
(eval-after-load 'rng-loc
      '(add-to-list 'rng-schema-locating-files "~/emacs/docbook/schema/schemas.xml"))

;; Ruby autotest
;;(load "~/emacs/autotest.el")
;;(load "~/emacs/ruby-test.el")

;; Package (https://github.com/technomancy/package.el)
(load "~/emacs/package/package.el")
(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))


;; Line Numbering
(load "~/emacs/linum.el")
(global-linum-mode)
(column-number-mode)
(setq linum-format "%3d ")
(set-face-background 'linum "#333333")
(set-face-foreground 'linum "PaleGreen3")

;;Hide the fringes
(fringe-mode 0)

(blink-cursor-mode 1)

(setq inhibit-startup-message t)

;; Auto complete
;;(add-to-list 'load-path "~/emacs/autocomplete")
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "~/emacs/autocomplete/ac-dict")
;;(ac-config-default)


;; arg >= 1 enable the menu bar. Menu bar is the File, Edit, Options,
;; Buffers, Tools, Emacs-Lisp, Help
(menu-bar-mode 1)

;; Sort out scroll bars and toolbar:
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; In cocoa emacs, you can set the font in Options->Change default font.
;;(set-default-font "-apple-Consolas-medium-normal-normal--18-180-75-75-m-0-iso10646-1")
(set-default-font "-apple-Inconsolata-medium-normal-normal--20-180-75-75-m-0-iso10646-1")


;; Set the position and size of the window:
(set-frame-position (selected-frame) 0 0)
(set-frame-height (selected-frame) 192)
(set-frame-width (selected-frame) 400)

;; Allow hash to be entered
(defun insert-pound ()
  "Inserts a pound into the buffer"
  (insert "#"))

(global-set-key (kbd "M-3") '(lambda()(interactive)(insert-pound)))

;; Transparency (http://emacs-fu.blogspot.com/2009/02/transparent-emacs.html)
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
(set-face-foreground 'modeline "#CCCCCC")
(set-face-background 'modeline "#333333")
(set-cursor-color "purple")
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


(defun iwb ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

;; Insert a file-name at a point in the file
(defun my-insert-file-name (filename &optional args)
    "Insert name of file FILENAME into buffer after point.
  
  Prefixed with \\[universal-argument], expand the file name to
  its fully canocalized path.  See `expand-file-name'.
  
  Prefixed with \\[negative-argument], use relative path to file
  name from current directory, `default-directory'.  See
  `file-relative-name'.
  
  The default with no prefix is to insert the file name exactly as
  it appears in the minibuffer prompt."
    ;; Based on insert-file in Emacs -- ashawley 20080926
    (interactive "*fInsert file name: \nP")
    (cond ((eq '- args)
           (insert (file-relative-name filename)))
          ((not (null args))
           (insert (expand-file-name filename)))
          (t
           (insert filename))))
  
  (global-set-key "\C-c\C-i" 'my-insert-file-name)

;;Color themes
(add-to-list 'load-path "~/emacs/color-theme")
(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

(defvar user-temporary-file-directory
  (concat temporary-file-directory user-login-name "/"))
(make-directory user-temporary-file-directory t)
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
        (,tramp-file-name-regexp nil)))
(setq auto-save-list-file-prefix
      (concat user-temporary-file-directory ".auto-saves-"))
(setq auto-save-file-name-transforms
      `((".*" ,user-temporary-file-directory t)))
