;; デフォルトの円k－ディングを設定する
(setq process-coding-system-alist
			(cons '("gosh" utf-8 . utf-8) process-coding-system-alist))

;; もろもろ設定
;; http://takeisamemo.blogspot.jp/2013/04/sicplispgauche-emacs.html
(setq quack-default-program "gosh")
(require 'quack)
(require 'scheme-complete)
(add-hook 'scheme-mode-hook
					(lambda ()
						(make-local-variable 'eldoc-documentation-function)
						(setq eldoc-documentation-function 'scheme-get-current-symbol-info)
						(eldoc-mode)))
(setq lisp-indent-function 'scheme-smart-indent-function)
