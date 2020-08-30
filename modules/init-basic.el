;;;; init-basic.el -- Logic Emacs

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

;; 制表符
(setq-default indent-tabs-mode -1)
(setq-default tab-width 4)

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

;; 选中一段文字之后输入一个字符会替换掉选中的文字
(delete-selection-mode 1)

;; 高亮当前行
(global-hl-line-mode 1)

(provide 'init-basic)
