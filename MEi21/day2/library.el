;; to make emacs elegant, packages and libraries must be used.
;; related method : load, load-file, require, autoload, feature.

;; load is the general function for loading a file
;; SYNTAX: (load FILE &optional NOERROR NOMESSAGE NOSUFFIX MUST-SUFFIX)
(load "pkg")
;; which will try to load pkg.elc, pkg.el ..

;; `load-file` will load a specific file, whose name should contain name extension
(load-file "pkg.el")
;; or
(load (expand-file-name file_name) nil nil t)

;; `require` load a package if it has not already been loaded.
;; SYNTAX: (require FEATURE &optional FILENAME NOERROR)
;; it checks if the symbol FEATURE is in variable features.
;; If not, then it calls load to load it.
;; `require` is recommend to use in elisp script.

;; `autoload ` load a file only when a function is called.
;; SYNTAX: (autoload FUNCTION FILE &optional DOCSTRING INTERACTIVE TYPE)
;; It associates a function name with a file path.
;; When the function is called, load the file, and execute the function.
