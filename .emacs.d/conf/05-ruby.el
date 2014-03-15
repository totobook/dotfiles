;; カッコの自動挿入
(require 'ruby-electric nil t)

;; endに対応する行のハイライト
(when (require 'ruby-block nil t)
  (setq ruby-block-highlight-toggle t))

;; インタラクティブRubyを利用する
(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby prosess")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")

;; ruby-mode-hookの関数を定義
(defun ruby-mode-hooks ()
  (inf-ruby-keys)
  (ruby-electric-mode t)
  (ruby-block-mode t))

;; ruby-mode-hookに追加
(add-hook 'ruby-mode-hook 'ruby-mode-hooks)

;; Rinari
;; http://www.curiosity-drives.me/2011/01/emacsrailsemacs-rinari-yasnippet.html
(add-to-load-path "rinari" "rhtml")
(require 'rinari)
