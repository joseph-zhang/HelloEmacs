;; go on~
;; this file contains some baisc structure in elisp

(defun hello (name)
  (insert (format "Hello %s!\n" name)))

;; define list structure
;; note that in elisp, defun is noly for function,
;; which is different from scheme.
;; For example, in scheme, we can use `(define ls '(1 2 3))` to defin
;; a list structure, but in elisp we can not use defun but setq
(setq list-of-names '("sarah" "Chloe" "Mathhilde"))

;; also use car and cdr to get value
(car list-of-names)
(cdr list-of-names)

;; use push to add a value in front of the list
(push "Stephanie" list-of-names)

;; mapcar, just like map 
(mapcar 'hello list-of-names)
;; define a new greeting function
(defun greeting ()
    (switch-to-buffer-other-window "*test*")
    (erase-buffer)
    (mapcar 'hello list-of-names)
    (other-window 1))

(greeting)

;; (goto-char (point-min)) move cusor to the front buffer
;; (while x y)
;; (search-forward string) search string in buffer 
(defun replace-hello-by-bonjour ()
    (switch-to-buffer-other-window "*test*")
    (goto-char (point-min))
    (while (search-forward "Hello" nil t)
      (replace-match "Bonjour"))
    (other-window 1))

(replace-hello-by-bonjour)

;; use re-search-forward to search a pattern
;; use add-text-properties to add style to text
(defun boldify-names ()
    (switch-to-buffer-other-window "*test*")
    (goto-char (point-min))
    (while (re-search-forward "Bonjour \\(.+\\)!" nil t)
      (add-text-properties (match-beginning 1)
                           (match-end 1)
                           (list 'face 'bold)))
    (other-window 1))

(boldify-names)
