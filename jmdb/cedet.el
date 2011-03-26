;; Load CEDET.
;; This is required by ECB which will be loaded later.
;; See cedet/common/cedet.info for configuration details.
(load-file "~/emacs/cedet-1.0/common/cedet.el")

;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; * This enables the database and idle reparse engines
(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
(semantic-load-enable-code-helpers)

(add-to-list 'load-path "~/emacs/ecb-2.40")
(load-file "~/emacs/ecb-2.40/ecb.el")


(custom-set-variables
 custom-set-variables was added by Custom.
 If you edit it by hand, you could mess it up, so be careful.
 Your init file should contain only one such instance.
 If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (("~/work/code/clients/sukrupa/school-admin" "sukrupa-school-admin"))))
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(ecb-tip-of-the-day nil)
'(ecb-tree-buffer-style (quote ascii-guides))
)
