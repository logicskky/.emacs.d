;; 设置文本编码为 UTF-8
(set-language-environment "UTF-8")

;; 设置用户目录
(setq user-emacs-directory "~/.emacs.d/var/")

;; 设置recentf文件保存路径
(setq recentf-save-file "~/.emacs.d/var/recentf")
;; 设置自动保存文件的路径
(setq auto-save-list-file-prefix "~/.emacs.d/var/auto-save-list/saves-")

;;; 平滑滚动
;; (setq mouse-wheel-scroll-amount '(2 ((shift) . 4) ((control) . nil)))
;; (setq mouse-wheel-progressive-speed nil)

;; 关闭锁文件
(setq create-lockfiles -1)

;; 关闭警告音
(setq ring-bell-function 'ignore)

;; Tab
(setq-default indent-tabs-mode nil)  ; Tab 转换为空格
(setq default-tab-width 4)           ; 设置 Tab 为 4 个空格的宽度

;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)

;; 备份文件（backup files）设置
(setq
    make-backup-files t            ; 开启自动备份
    backup-by-renaming t
    backup-directory-alist '(("." . "~/.emacs.d/var/backup/")) ; 自动备份在目录"~/.emacs.d/var/backup/"下
    delete-old-versions t          ; 自动删除旧的备份文件
    kept-new-versions 3            ; 保留最近的3个备份文件
    version-control t)             ; 多次备份

;; 自动括号匹配
(show-paren-mode 1)

;; 光标在括号内时就高亮周围两个括号
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
    "Highlight enclosing parens."
    (cond ((looking-at-p "\\s(") (funcall fn))
	    (t (save-excursion
	        (ignore-errors (backward-up-list))
	        (funcall fn)))))

;; 选中一段文字之后输入一个字符会替换掉选中的文字
(delete-selection-mode 1)

;; 高亮当前行
(global-hl-line-mode 1)

;; 设置 *scratch* 缓冲区的默认内容
(setq initial-scratch-message
";; Logic Emacs.
;; Use C-x C-f to open a file.

")

;; popwin
(require 'popwin)
(popwin-mode 1)

;; 自动删除 Windows 系统下的 ^M 换行符
(defun remove-dos-eol ()
  "Replace DOS eolns CR LF with Unix eolns CR"
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

(provide 'init-basic)
