;; feature is a basic notion.
;; It is a global variable that represent available features,
;; if we use
(provide 'symbol_name)
;; like what we did in day3 at the end of a .el file.
;; When the code is evaluated, emacs will add the symbol name to the features list.

;; Then if we use
(require 'symbol_name)
;; in another file,
;; emacs checks if that symbol name is already in the features list.
