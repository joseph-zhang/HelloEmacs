;; Now let's begin to try some change
;; customize your own emacsis is funny and helpful, just use some basic
;; method to do some change.

;; the first caution is that the `setq` and `setq-default` are quite different.
;; setq used for current buffer, setq-default set the global value.
;; for example
(setq-default cursor-type 'bar)

;; method to shut down the backup, do not let emacs to creat xxx~ file
(setq make-backup-files nil)

;; use require to load recentf
;; and add open recent item!
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

;; helpful function, open replacement
(delete-selection-mode 1)

;; highlight current line
(global-hl-line-mode 1)
