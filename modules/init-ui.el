;;;; init-ui.el -- Logic Emacs

;; 主题设置
(load-theme 'atom-one-dark t)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭菜单栏
(menu-bar-mode -1)

;; 关闭滚动条
(scroll-bar-mode -1)

;; 设置光标颜色
(set-cursor-color "white")

;; 设置光标样式
(setq-default cursor-type 'box)

;; 设置背景半透明
;;(set-frame-parameter nil 'alpha '(90 .100))

;; 显示行号
(global-linum-mode 1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)
(setq inhibit-startup-message t)

(provide 'init-ui)
