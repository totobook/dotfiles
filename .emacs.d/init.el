;; ------------------------------------------------------------
;; @ load-path

;; load-path���ɲôؿ�
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;; load-path���ɲä���ե����
;; 2�İʾ�ե��������ꤹ����ΰ��� => (add-to-load-path "elisp" "xxx" "yyy")
(add-to-load-path "elisp" "conf")

;; ------------------------------------------------------------
;; @ init-loader
;; https://gist.github.com/raw/1021706
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")

