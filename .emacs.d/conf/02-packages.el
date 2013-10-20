;; ------------------------------------------------------------
;; @ packages

;; auto-install
(when (require 'auto-install nil t)
  ;; インストールディレクトリの指定
  (setq auto-install-directory "~/.emacs.d/elisp/")
  ;; EmacsWikiに登録されてるelispの名前を取得
  (auto-install-update-emacswiki-package-name t)
  ;; install-elispの関数を利用可能にする
  (auto-install-compatibility-setup))

;; package.el
(when (require 'package nil t)
  ;; パッケージリポジトリにMarmaladeと開発者運営のELPAを追加
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives '("ELPA" . "http:tromey.com/elpa/"))
  (package-initialize))

;; auto-complete
(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories
               "~/.emacs.d/elisp/ac-dict")
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (define-key ac-complete-mode-map "\C-n" 'ac-next)
  (define-key ac-complete-mode-map "\C-p" 'ac-previous)
  (ac-config-default)
  (global-auto-complete-mode t))

;; undo-tree
;; https://gist.github.com/301447
;; http://what-linux.seesaa.net/article/158676846.html
;; ------------------------------------------------------------
(when (require 'undo-tree nil t)
  (global-undo-tree-mode))

;; cua-mode
;; 矩形選択用
(cua-mode t)
(setq cua-enable-cua-keys nil) ; cuaキーバインドを無効化する
(global-set-key (kbd "M-@") 'cua-set-rectangle-mark)

;; cssm-mode
(defun css-mode-hooks ()
  "css-mode hooks"
  ;; インデントをCスタイルにする
  (setq cssm-indent-function #'cssm-c-style-indenter)
  ;; インデント幅を2にする
  (setq cssm-indent-level 2)
  ;; インデントにタブ文字を使う
  (setq-default indent-tabs-mode nil))

(add-hook 'css-mode-hook 'css-mode-hooks)

;; js2-mode
(add-hook 'js2-mode-hook 'js-indent-hook)

;; popwin
;; http://d.hatena.ne.jp/m2ym/20110120/1295524932
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
; dird-xを上部に表示
(push '(dired-mode :position top :dedicated t) popwin:special-display-config)
(global-set-key (kbd "C-x C-d") 'dired-jump-other-window)
; undo-tree下部に表示
(push '(" *undo-tree*" :width 0.3 :position bottom) popwin:special-display-config)

;; flymake
(require 'flymake)

;; direx
;; http://cx4a.blogspot.jp/2011/12/popwineldirexel.html
(require 'direx)
(push '(direx:direx-mode :position top :dedicated t) popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)

;; smartchr.el
;; http://emacs.g.hatena.ne.jp/k1LoW/20101211/1292046538
(require 'smartchr)
(global-set-key (kbd "=") (smartchr '(" = " " == " " === ")))

