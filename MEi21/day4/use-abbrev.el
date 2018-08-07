;; In emacs, there is a mode named abbrev,
;; which will help us define abbreviations list.

;; First, open this mode
;; recalling the difference between setq-default and setq
(setq-default abbrev-mode t)

;; Then, define the abbrev list
(define-abbrev-table 'global-abbrev-table '(
                                            ("thx" "Thanks a lot!")
                                            ("88" "bye bye.")
                                            ))
