;;; Only works on a certain build of cocoa emacs

;; First you want to get the fullscreen version of cocoa emacs from (http://www.stratospark.com/blog/2010/fullscreen_emacs_on_osx.html)
;; Then the following allows you to toggle between normal and fullscreen
;;(ns-toggle-fullscreen)

(when (fboundp 'ns-toggle-fullscreen)
  (add-hook 'window-setup-hook 'ns-toggle-fullscreen t)
  (global-set-key (kbd "M-RET") 'ns-toggle-fullscreen))
