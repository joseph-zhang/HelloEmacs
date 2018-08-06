;; this is the module for emacs initialization
;; which will be loaded by ~/.emacs.d/init.el

;; use MELPA
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu" . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
			   ;; --- Auto-completion ---
			   company
			   ;; --- Better Editor ---
			   smooth-scrolling
			   hungry-delete
			   swiper
			   counsel
			   smartparens
			   popwin
			   ;; --- Major Mode ---
			   markdown-mode
			   ) "Default packages")

(setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

;; check if the packages are installed
;; if not, install them
 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

;; !!!
;; this line is the key point,
;; it means that this is a module which can be loaded.
(provide 'init-packages)

