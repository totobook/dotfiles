;; ------------------------------------------------------------
;; @ key-bind

;; C-h でBackspace入力
(keyboard-translate ?\C-h ?\C-?)

;; C-t でウインドウ切り替え
(define-key global-map (kbd "C-t") 'other-window)

;; ------------------------------------------------------------
;; @ basic

;; *.~ のバックアップファイルを作らない
(setq make-backup-files nil)

;; .#* のバックアップファイルを作らない
(setq auto-save-default nil)

;; ------------------------------------------------------------
;; @ mode-line

;; ファイルサイズを表示
(size-indication-mode t)

;; 時計を表示
(setq display-time-24hr-format t) ; 24時表記
(display-time-mode t)

;; ------------------------------------------------------------
;; @ font, encoding

;; 文字コード指定
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

;; ------------------------------------------------------------
;; @ general

;; common lisp
(require 'cl)

;; スタートアップ画面非表示
(setq inhibit-startup-screen t)

;; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;; メニューバーの非表示
(menu-bar-mode 0)

;; カッコの範囲内を強調表示
(show-paren-mode t)
(setq show-paren-delay 0)

;; yes or no を y or n で入力OK
(fset 'yes-ore-no-p 'y-or-n-p)

;; globalなC-zを無効化
(global-unset-key "\C-z")

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
