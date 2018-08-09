;; In day2, the method to load a library has been described.
;; Usually, we use `require` to load a package,
;; however, there is a good Macro named use-package to deal with it.
;; use-package can be seen as a better require, making the configuration easier to understand.

;; use 'require' to load a package
(require 'packgae-name)

;; use 'use-package' to load a package
(use-package 'package-name)

;; to see what this macro will expand
(pp (macroexpand '(use-package package-name)))
;; the code show that if the package is not exist, use-package just give a warning, not an error.

;; On the other hand, 'use-package' can help us organize configuration better.
;; the code in "init" block will be executed before the require of package.
;; if the "init" code give an error, then the require step will be skipped.
;; while the code in "cofig" will be executed after the require of package.

(use-package color-moccur
  :commands (isearch-moccur isearch-all)
  :bind (("M-s O" . moccur)
         :map isearch-mode-map
         ("M-o" . isearch-moccur)
         ("M-O" . isearch-moccur-all))
  :init
  (setq isearch-lazy-highlight t)
  :config
  (use-package moccur-edit))
