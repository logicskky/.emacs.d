;;;; My Emacs Configuration

;;; 基础设置

;; 关闭工具栏
(tool-bar-mode -1)
(menu-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 备份文件（backup files）设置
(setq
    make-backup-files t            ; 开启自动备份
    backup-by-renaming t
    backup-directory-alist '(("." . "~/.emacs.d/backup/")) ; 自动备份在目录"~/.emacs.d/backup/"下
    delete-old-versions t          ; 自动删除旧的备份文件
    kept-new-versions 3            ; 保留最近的3个备份文件
    version-control t)             ; 多次备份

;; 高亮当前行
(global-hl-line-mode 1)

;; 显示时间
(display-time-mode 1)              ; 显示时间
(setq display-time-24hr-format t)  ; 格式
(setq display-time-day-and-date t) ; 显示时间、星期、日期
