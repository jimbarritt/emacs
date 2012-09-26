;; This is Jim's elisp playground in which we are exploring some of the cool things you can do with emacs!
;; My goal here is to create a set of key commands that give me my most frequently used combos in intellij



(describe-function 'interactive) ;; This will tell you a lot of interesting things about the interactive command

;; This is a function that takes as an input the name of a buffer (it will default to the current buffer)
(defun do-something-with-a-buffer (buffer)
  "An interactive function that does something cool!"
  (interactive "bChoose A Buffer:") ;; The 'b' at the start, is a code for 'buffer'
  (message (format "Going to do something with the buffer [%s]" buffer))
)


(defun say-hello ()
  "A Simple function for testing key-bindings"
  (interactive)
  (message "hello!"))


;; Unfortunately, you can either have the "alt" key behave in os mode, or be under the control of emacs.
;; If under control of emacs, theres no way to distinguish between left and right option keys.
;; I happen to have re-mapped the right option key to be a second control key to save my fingers from tendonitis
;; SO - in the current mode, the apple key also behaves like the alt key

;; My most common key combinations are:
;;
;; ALT+SHIFT+F10  - Run ... shows a dialog of run configurations
;; CTRL+SHIFT+F10 - Run the current file (e.g. a test or a main application)
;; APPLE+F9 - Build project
;; APPLE+N - Search for a class (go to tag in emacs - "APPLE+." Find tag regexp is "CTRL+CMD+."
;; APPLE+SHIFT+N - Search for a file
;; SHIFT+F6 - rename
;; F5 - Move
;; APPLE+B - Jump to  (unfortunately this guy is move word backwards in emacs)

;; So I have to re-map emacs to move word backwards. Go to is basically "APPLE+." in emacs which is find tag
;; Auto complete in intellij is "CTRL+space" which is set mark in emacs so I'm moving intellij

(global-set-key (kbd "<C-S-f10>") 'do-something-with-a-buffer)
(global-unset-key (kbd "<M-S-f10>")) ;; By default is bound to "show the menu"


(global-set-key (kbd "<M-S-s>") 'say-hello)
(describe-key (kbd "<M-S-s>"))
(describe-key)




(git-get-top-dir "~/work/code/github/platform/")

{:key "value" }
(say-hello)
(say-hello "bob")





(global-unset-key (kbd "<C-S-f10>"))

(describe-function 'git-status)
(describe-function 'git-stat)

()
