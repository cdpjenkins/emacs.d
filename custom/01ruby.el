;; Ruby stuff
;(require 'highlight-indentation)
(add-hook 'enh-ruby-mode-hook
	  (lambda () (highlight-indentation-current-column-mode)))
(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)
(add-hook 'enh-ruby-mode-hook
	  (lambda ()
	    (local-set-key (kbd "C-c r r") #'inf-ruby)))

; (global-set-key (kbd "C-c r a") 'rvm-activate-corresponding-ruby)

(add-hook 'enh-ruby-mode-hook 'projectile-mode)
(add-hook 'enh-ruby-mode-hook 'robe-mode)


(add-hook 'enh-ruby-mode-hook 'company-mode)
;(add-hook 'enh-ruby-mode-hook
;	  (lambda ()
;	    (push 'company-robe company-backends)))

