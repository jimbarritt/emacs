;;; Docbook support

;; Loading docbook:
;;(load "~/emacs/docbook-xml-mode.el")
(eval-after-load 'rng-loc
      '(add-to-list 'rng-schema-locating-files "~/emacs/docbook/schema/schemas.xml"))


