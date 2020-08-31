;;;; package-all-the-icons.el -- Logic Emacs

;;; all-the-icons
(use-package all-the-icons)

;;; all-the-icons-ivy
(use-package all-the-icons-ivy
    :init (add-hook 'after-init-hook 'all-the-icons-ivy-setup))
(setq all-the-icons-ivy-file-commands
      '(counsel-find-file counsel-file-jump counsel-recentf counsel-projectile-find-file counsel-projectile-find-dir))

;;; all-the-icons-dired
(use-package all-the-icons-dired
    :init (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

(provide 'package-all-the-icons)
