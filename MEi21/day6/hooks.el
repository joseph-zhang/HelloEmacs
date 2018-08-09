;; hook is a basic and important notion in emacs.
;; Actually, a hook is a variable which value is a list of functions.
;; when some event happen, those hooks related to it will 'run',
;; when a hook run, all functions in that hook will be called.

;; when html-mode is loaded, html-mode-hook's functions are run.
;; when any command is called, post-command-hook's functions are run.

;; 'add-hook' let us add functions in a specific hook
(add-hook 'xxx-hook 'xxx-func-name)

;; 'remove-hook' let us remove a function in a hook
(remove-hook 'xxx-hook 'xxx-func-name)

;; !! To add a function to hook,
;; It is better not to use lambda to define a function
;; but define the function of what you want to do, then add that function name to the hook.
;; The reason is that names of function is helpful.
;; 1). make the definition more clear.
;; 2). Lambda in hook cannot be removed using remove-hook.
