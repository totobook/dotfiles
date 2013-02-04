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
  (setq c-basic-offset 'case label '+)  ; switch文のcaseラベル
  (setq c-set-offset 'arglist-intro '+) ; 配列の最初の要素が開業した場合
  (setq c-set-offset 'arglist-close 0)) ; 配列の閉じカッコ

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
