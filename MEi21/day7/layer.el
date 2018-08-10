;; After spacemacs installed, layers play an important role in daily coding life.
;; layers of spacemacs is a collection of some packages which related to a smae topic (for example, python)

;; every layer has some variables, we can config them to meet our demand.
;; Spacemacs contains some default layers in ~/.emacs.d/layers/
;; we can use SPC(M-m) h SPC to retrieve them.

;; here is an example to set a var in  better-default layer
;; use SPC h SPC to find this layer and press SPC f j to enter the dired mode.
;; open config.el, we can find there are two variables, and better-defaults-move-to-end-of-code-first is nil.
;; open  dotspacemacs/layers and modified
better-defaults
;; to
(better-defaults :variables
                 better-defaults-move-to-end-of-code-first t)
;; so that this var is setted to true.

;; In fact, layers have similar structure
;; [layer_name]
;; |__ [local]
;; | |__ [package 1]
;; | |     ...
;; | |__ [package n]
;; |-- layers.el
;; |__ packages.el
;; |__ funcs.el
;; |__ config.el
;; |__ keybindings.el

;; [] = directory

;; the layers we create is located at where we want.
;; Recalling that we have rename ~./spacemacs.el to ~/.spacemacs.d/init.el and create a new folder /layers
;; now we can find that is better than a single elisp file, it helps us manage layers/packages efficently.

;; To create a new layer, press M-x and input  configuration-layer/create-layer, then select the folder ~/.spacemacs.d/layers
;; then input the name of our layer and create it!
;; look at this folder, a new layer has been created.

;; to add packages to our new layer, just modified testlayer-packages in packages.el.
;; then modify config.el, this file contains some configuration of layer.
;; the usage of other files is east to understand, just like a module.
;; At last, don't forget to add this new layer to dotspacemacs-configuration-layers if you want to use it.




