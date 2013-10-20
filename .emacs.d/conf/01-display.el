;; 表示関連全般

;; ------------------------------------------------------------
;; @ display

;; メニューバーの非表示
(menu-bar-mode 0)

;; スタートアップ画面非表示
(setq inhibit-startup-screen t)

;; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;; カッコの範囲内を強調表示
(show-paren-mode t)
(setq show-paren-delay 0)

;; 文字の色つけ
(global-font-lock-mode t)

;; tab幅4
(setq-default tab-width 2)

;; インデントにタブ文字を使用
(setq-default indent-tabs-mode t)

;; タブ文字と全角スペースを可視化
(setq whitespace-style
			'(tabs tab-mark spaces space-mark))
(setq whitespace-space-regexp "\\(\x3000+\\)")
(setq whitespace-display-mappings
			'((space-mark ?\x3000 [?\□])
				(tab-mark   ?\t   [?\xBB ?\t])
				))
(require 'whitespace)
(global-whitespace-mode 1)
(set-face-foreground 'whitespace-space "LightSlateGray")
(set-face-background 'whitespace-space "DarkSlateGray")
(set-face-foreground 'whitespace-tab "LightSlateGray")
(set-face-background 'whitespace-tab "DarkSlateGray")

;; 常にバッファ左に行番号を表示する
;(global-linum-mode 1)

;; 4桁文を予め行番号ように確保する
;(setq linum-format "%4d")

;; ------------------------------------------------------------
;; @ mode-line

;; ファイルサイズを表示
(size-indication-mode t)

;; 時計を表示
(setq display-time-24hr-format t) ; 24時表記
(display-time-mode t)
