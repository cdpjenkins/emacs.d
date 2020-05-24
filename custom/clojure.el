;; Use paredit and RainbowDelimiters when editing Clojure source and when in
;; repl
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

;; Linux box
(add-to-list 'exec-path "/Users/cdpj/bin")

;; Work Mac
;; TODO find a more sensible way of switching between these
(add-to-list 'exec-path "/Users/Chris/bin")


;; clj-refactor shizzle here
(add-hook 'clojure-mode-hook (lambda ()
                               (cljr-add-keybindings-with-prefix "C-c C-m")
                               (clj-refactor-mode 1)))


(setq sr-speedbar-right-side nil)
(setq speedbar-show-unknown-files t)
(setq sr-speedbar-width 35)
(setq sr-speedbar-max-width 35)
(setq speedbar-use-images t)

