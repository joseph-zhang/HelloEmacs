;;;; here are some tips when using emacs/spacemacs the first time.

;; 1) to enter SPC in emacs-mode, you should use M-m first, not white space;
;; 2) if the installation of spacemacs meet an 'mispell' error, try emacs with --insecure;
;; 3) if some package are not installed correctly, just delete them in elpa, and reboot the emacs;
;; 4) to change the modeline separator effect, add the following line in dotspacemacs/user-config:
(setq powerline-default-separator xxx)
;; 5) some inner layers can be added in dotspacenacs/layers -> dotspacemacs-configuration-layers;
;; 6) the default setting of spacemacs is no line number, to take on it, find
dotspacemacs-line-numbers xxx
;; and set it to t;
;; 7) to change the source of spacemacs, add something in dotspacemacs/user-init;
(setq configuration-layer--elpa-archives xxx)
