;; This is Jim's elisp playground in which we are exploring some of the cool things you can do with emacs!

(describe-function 'interactive) ;; This will tell you a lot of interesting things about the interactive command

;; This is a function that takes as an input the name of a buffer (it will default to the current buffer_
(defun do-something-with-a-buffer (buffer)
  "An interactive function that does something cool!"
  (interactive "bChoose A Buffer:")
  (message (format "Going to do something with the buffer [%s]" buffer))
)

(global-set-key (kbd "<C-S-f10>") 'do-something-with-a-buffer)


(git-get-top-dir "~/work/code/github/platform/")

{:key "value" }
(say-hello)
(say-hello "bob")



(describe-key (kbd "<C-S-f10>"))

(global-unset-key (kbd "<C-S-f10>"))

(describe-function 'git-status)
(describe-function 'git-stat)

()
