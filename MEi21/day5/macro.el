;; Macro can enhance the efficiency of coding
;; In Lisp-like languages (Scheme, Racket, Elisp, Common Lisp...) macro is widely used.
;; In Elisp, use defmacro to define a macro

;; For example
(defmacro dec! (var)
  (list 'setq var (list '- var 1)))

;; consider what it is...
(setq my-var 1)
(macroexpand '(dec! my-var))

;; test this macro
(dec! my-var)

;; the most important feature of macro is its mechanism
;; macro is different from function, but very similar
;; for example, define dec function
(defun dec (var)
  (setq var (- var 1)))

(dec my-var)

;; compare this two method, if we execute once, they will give the same answer: 0
;; however, dec! can reduce input var continuously, the trace is 0, -1, -2 ...
;; the function dec can not reduce the value of my-var.

;; So what is the difference?
;; In fact, the reason why function dec cannot reduce the value of my-var
;; is that the (seq var (- var 1)) just reduce the copy of my-var, not my-var itself.
;; if we write the function like this
(defun dec (var)
  (progn
    (print var) ;; 1
    (setq var (- var 1))
    (print var) ;; 0
    (setq var (- var 1))
    (print var) ;; -1
    ))

(dec my-var)
my-var
;; we can find that the result value of three print expression.
;; They are 1, 0 and -1, but the value of my-var is not changed 

;; if we use dec! macro, the value will be reduced rightly.
;; the params of macro will not be evaluated immediately at first,
;; but be expanded and  considered as a whole.

;; In this way, backquote is usually used with macro
;; for exmaple,
(defmacro decp (number)
  (message "This is a  number: %d" number))

(decp 5) ;; "This is a number: 5"

(decp (+ 1 2)) ;; Format specifier doesn't match  argument type!!

;; The previous expression get a failure because (+ 1 2) is not match %d type.
;; To make it work, the input expression must be evaluated firstly.
;; modified decp macro
(defmacro decp (number)
  `(message "This is a number: %d" ,number))

(decp (+ 1 2)) ;; "This is a number: 3"
