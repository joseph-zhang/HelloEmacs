;; suppose this file is ~/.emacs.d/init.el
;; which is the entrance of the configuration

;; the init functions are written in independent files.
;; Hence, just require them in this file.

(package-initialize)

;; add the module path
(add-to-list 'load-path "~/.emacs.d/separ/")

;; require the initial module
(require 'init-packages)
