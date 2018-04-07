;; Use paredit and RainbowDelimiters when editing Clojure source and when in
;; repl
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

(add-to-list 'exec-path "/Users/cdpj/bin")
