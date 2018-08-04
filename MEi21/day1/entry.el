;; Since we have some experience in racket and scheme,
;; emacslisp is not so strange :)

;; the alrithmetic method is the same as scheme
;; for example
(* (+ 5 2) 6)
;; use C-x C-e to evaluate it in Emacs-lisp mode
;; the result is 42

;; the assignment is different from scheme
;; In elisp, it is setq, not set!
(setq a-name "Joseph")

;; use `insert` to print string on the screen (at cursor)
(insert "Hello world!")

;; definition of function is also different from scheme/racket
;; in scheme, we define a function as (define (<name> <params>) <body>)
;; while in elisp, the function definition is (defun <name> (<params>) <body>)
(defun hello (name) (insert "Hello " name))
;; try it~
(hello "Joseph")

;; the function `switch-to-buffer-other-window` will create a new buffer
;; `progn` will combine several sexps, just like `begin` in scheme
(progn
  (switch-to-buffer-other-window "*test*")
  (hello "Joseph"))

;; use erase-buffer to clear a buffer
;; use other-window to change current windows
(progn
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (other-window 1))

;; the usage of `let` is the same as what we did in scheme
(let ((local-name "you"))
  (switch-to-buffer-other-window "*test*")
  (erase-buffer)
  (hello local-name)
  (other-window 1))

;; some string methods
(format "Hello %s!\n" "visitor")

;; review what we have learnt
(defun greeting (name)
  (let ((your-name "Joseph"))
    (insert (format "Hello %s!\n\nI am %s."
		    name
		    your-name))))

(greeting "you")

;; read from minibuffer
(defun new-greeting (from-name)
  (let ((your-name (read-from-minibuffer "Enter your name: ")))
    (insert (format "Hello!\n\nI am %s and you are %s."
                    from-name ; the argument of the function
                    your-name ; the let-bound var, entered at prompt
                    ))))

(new-greeting "Joseph")
