;; 设置字体为更纱黑体（Sarasa-Gothic）
(let ((emacs-font-size 12)
      (emacs-font-name "等距更纱黑体 SC"))
  (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))
  (set-fontset-font (frame-parameter nil 'font) 'unicode (eval emacs-font-name)))

;;(with-eval-after-load 'org
;;  (defun org-buffer-face-mode-variable ()
;;    (interactive)
;;    (make-face 'width-font-face)
;;    (set-face-attribute 'width-font-face nil :font "等距更纱黑体 SC 15")
;;    (setq buffer-face-mode-face 'width-font-face)
;;    (buffer-face-mode))

;;  (add-hook 'org-mode-hook 'org-buffer-face-mode-variable))

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
