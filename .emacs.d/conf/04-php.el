;; ------------------------------------------------------------
;; php-mode

;; php-mode
(when (require 'php-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.ctp\\'" . php-mode))
  (setq php-search-url "http://jp.php.net/ja/")
  (setq php-manual-url "http://jp.php.net/manual/ja/"))

;; php-modeのインデント設定
(defun php-indent-hook ()
	(setq indent-tabs-mode t)
	(setq c-bacis-offset 2)
	(c-set-style "stroustrup")
	(c-set-offset 'case-label' 4)
	(c-set-offset 'arglist-intro' 4)
	(c-set-offset 'arglist-cont-nonempty' 4)
	(c-set-offset 'arglist-close' 0)))

(add-hook 'php-mode-hook 'php-indent-hook)

;; php-modeの補完（要Anything）
(defun php-completion-hook ()
  (when (require 'php-completion nil t)
    (php-completion-mode t)
    (define-key php-mode-map (kbd "C-o") 'phpcmp-complet)
    (when (require 'auto-complete nil t)
      (make-variable-buffer-local 'ac-sources)
      (add-to-list 'ac-sources 'ac-source-php-completion)
      (auto-complete-mode t))))

(add-hook 'php-mode-hook 'php-completion-hook)

;; smarty-mode
(autoload 'smarty-mode "smarty-mode")
(setq auto-mode-alist
      (cons '("\\.tpl\\'" . smarty-mode) auto-mode-alist))
