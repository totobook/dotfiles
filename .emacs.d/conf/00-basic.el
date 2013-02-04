;; ------------------------------------------------------------
;; @ key-bind

;; C-h でBackspace入力
(keyboard-translate ?\C-h ?\C-?)

;; C-t でウインドウ切り替え
(define-key global-map (kbd "C-t") 'other-window)

;; globalなC-zを無効化
(global-unset-key "\C-z")

;; ------------------------------------------------------------
;; @ basic

;; *.~ のバックアップファイルを作らない
(setq make-backup-files nil)

;; .#* のバックアップファイルを作らない
(setq auto-save-default nil)

;; ------------------------------------------------------------
;; @ font, encoding

;; 文字コード指定
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; ------------------------------------------------------------
;; @ general

;; common lisp
(require 'cl)

;; yes or no を y or n で入力OK
(fset 'yes-ore-no-p 'y-or-n-p)

;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-file t)

;; diredを便利に
(require 'dired-x)

;; beep音を消す
(setq visible-bel t)
(setq ring-bell-function 'ignore)

;; 行間
(setq-default line-spacing 0)

;; 1行ずつスクロール
(setq scroll-conservatively 35
      scroll-margin 0
      scroll-step 1)
(setq comint-scroll-show-maximum-output t)
