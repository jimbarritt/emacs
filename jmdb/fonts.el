;;; Fonts

;; You can determine the full name for a font in a window (under the cursor) by doing C-u C-x =

;; From: http://community.schemewiki.org/cgi-bin/scheme.cgi?Emacs
;;
;;(and window-system
;; (create-fontset-from-fontset-spec
;; (concat
;;       "-apple-monaco-medium-r-normal--12-*-*-*-*-*-fontset-monaco,"
;;       "ascii:-apple-monaco-medium-r-normal--12-100-*-*-m-100-mac-roman"))
;;     )

;;



;; In cocoa emacs, you can set the font in Options->Change default font.
;;(set-default-font "-apple-Consolas-medium-normal-normal--18-180-75-75-m-0-iso10646-1")



;; Make the default Inconsolata (at least on the mac)
;;(set-default-font "-apple-Inconsolata-medium-normal-normal--20-180-75-75-m-0-iso10646-1")
(set-default-font "-apple-Courier_New-medium-normal-normal-*-20-*-*-*-m-0-iso10646-1")


;;(set-default-font "-apple-Inconsolata-medium-normal-normal--24-180-75-75-m-0-iso10646-1")

;;(set-default-font "-ibm-courier-medium-r-normal--0-0-0-0-m-0-iso8859-1")



;; To change a font size globally:
;; (set-face-attribute 'default nil :height 360)
;; (set-face-attribute 'default nil :height 240)
;; (set-face-attribute 'default nil :height 160)
;; (set-face-attribute 'default nil :height 120)

;; To change the font size interactively per buffer:
;; Up:    C-x C-+, C-x C-=
;; Down:  C-x C--
;; Reset: C-x C-0

;; see http://www.gnu.org/software/emacs/manual/html_node/elisp/Attribute-Functions.html
;; for information about font faces
(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "cyan" :weight normal)
              ("NEXT" :weight normal)
              ("DONE" :foreground "forest green" :weight normal)
              ("WAITING" :weight normal)
              ("HOLD" :weight normal)
              ("CANCELLED" :weight normal)
              ("PHONE" :weight normal))))

