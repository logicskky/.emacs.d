;;; 配置插件源

(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                             ("melpa" . "http://elpa.emacs-china.org/melpa/"))))
;;(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

;; elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar logic-package-list '(
	                     use-package
                             org
	                     company
	                     which-key
	                     hungry-delete
	                     popwin
                             ;;treemacs
	                     swiper
	                     counsel
	                     ;; Other
	                     exec-path-from-shell
	                     ;; UI
                             atom-one-dark-theme
	                     doom-modeline
	                     all-the-icons
	                     all-the-icons-dired
	                     all-the-icons-ivy
	                     ) "Default packages")

(setq package-selected-packages logic-package-list)

(defun logic-package-installed-p ()
  (loop for pkg in logic-package-list
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (logic-package-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg logic-package-list)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(gnu-elpa doom-modeline use-package company hungry-delete swiper counsel smartparens exec-path-from-shell monokai-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init-package)
