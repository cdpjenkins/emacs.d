
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Use MELPA repos
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(add-to-list 'load-path "~/.emacs.d/custom")
 
;; Allow resizing with ctrl and mouse wheel
(global-set-key [C-mouse-4] 'text-scale-increase)
(global-set-key [C-mouse-5] 'text-scale-decrease)

;; htmlize stuff - use inline CSS so I can cut and past HTML snippets
(setq htmlize-output-type 'inline-css)

;; Less annoying revert behaviour
(global-set-key [f5] 'revert-buffer)
(global-auto-revert-mode 1)

;; Projectile mode key
(global-set-key (kbd "C-c C-p") 'projectile-global-mode)

;; Make sure SASS files use CSS mode
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

;; Line numbers are useful
(global-linum-mode)

(load "general.el")
(load "ruby.el")
(load "emacslisp.el")
(load "clojure.el")
(load "org-mode-stuff.el")

