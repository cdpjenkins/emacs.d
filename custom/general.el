
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
