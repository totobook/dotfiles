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

;; 行末の空白を削除
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; tab幅4
(setq-default tab-width 4)

;; インデントにタブ文字を使用
(setq-default indent-tabs-mode nil)

;; タブ文字と全角スペースを可視化
(require 'whitespace)
;; see whitespace.el for more details
(setq whitespace-style '(face tabs tab-mark spaces space-mark))
(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        ;; WARNING: the mapping below has a problem.
        ;; When a TAB occupies exactly one column, it will display the
        ;; character ?\xBB at that column followed by a TAB which goes to
        ;; the next TAB column.
        ;; If this is a problem for you, please, comment the line below.
        (tab-mark ?\t [?\xBB ?\t] [?\\ ?\t])))
(setq whitespace-space-regexp "\\(\u3000+\\)")
(set-face-foreground 'whitespace-tab "#adff2f")
(set-face-background 'whitespace-tab 'nil)
(set-face-underline  'whitespace-tab t)
(set-face-foreground 'whitespace-space "#7cfc00")
(set-face-background 'whitespace-space 'nil)
(set-face-bold-p 'whitespace-space t)
(global-whitespace-mode 1)
(global-set-key (kbd "C-x w") 'global-whitespace-mode)

;; ------------------------------------------------------------
;; @ mode-line

;; ファイルサイズを表示
(size-indication-mode t)

;; 時計を表示
(setq display-time-24hr-format t) ; 24時表記
(display-time-mode t)
