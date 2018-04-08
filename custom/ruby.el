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

(defun ruby-beautify-buffer ()
  (interactive)
  (let (p rb)
      (setq p (point) rb (buffer-string))

      (with-temp-buffer
        (insert rb)
        (call-process-region (point-min) (point-max) "rbeautify" t t)
        (setq rb (buffer-string)))

      (erase-buffer)
      (insert rb)
      (goto-char p)))

(eval-after-load 'ruby-mode
  '(define-key ruby-mode-map (kbd "C-c C-v f") 'ruby-beautify-buffer))


