;; Today, teh first important try is Spacemacs!!
;; Spacemacs is a beautiful configuration for emacs.
;; It is easy to to use, not need to write a lot of configuration code by ourselves.

;; to install it, just search spacemacs on Github,
;; and follow the installation steps (remember to backup old emacs configuration : ~/.emacs.d/ and ~/.emacs)

;; when installation, spacemacs will ask for more detailed in formation,
;; the important one is the editing pattern, here I choose emacs pattern (vim default).

;; After installation, spacemacs will try to install some packages for us.
;; In this step, if the package source is not proper, a good choice is change the source.
;; First close the emacs, and open ~/.spacemacs
;; this file is the configuration of spacemacs, we can find lots of default code.
;; Actually, there is a block we can put our own code in (dotspacemacs/user-init() function)
;; for example, ...
(setq configuration-layer--elpa-archives
      '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
        ("org-cn"   . "http://elpa.emacs-china.org/org/")
        ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))

;; and some other user code.

;; To manage configuration better, we usually use ~/.spacemacs.d/ folder instead of default ~/.spacemacs
;; create this folder, then rename ~/.spacemacs to ~/.spacemacs.d/init.el
;; this step can also be done by using Dired-mode.

;; Now start emacs once again, it will begin to install packages.
;; In fact, spacemacs provide some inner layers for us.
;; Finding a varible named 'dotspacemacs-configuration-layer', select layers that we need.
