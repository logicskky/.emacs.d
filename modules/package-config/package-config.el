;;; all-the-icons
(use-package all-the-icons)

;; all-the-icons-ivy
(use-package all-the-icons-ivy
    :init (add-hook 'after-init-hook 'all-the-icons-ivy-setup))
(setq all-the-icons-ivy-file-commands
      '(counsel-find-file counsel-file-jump counsel-recentf counsel-projectile-find-file counsel-projectile-find-dir))

;; all-the-icons-dired
(use-package all-the-icons-dired
    :init (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

;;; dired-mode
;; 让 dired 只用唯一的一个缓冲区
(put 'dired-find-alternate-file 'disabled nil)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;; doom-modeline
(use-package doom-modeline
    :ensure t
    :defer t
    :hook (after-init . doom-modeline-init))

;;;; EAF
;;; all apps
;; set dark mode
;; 'true', 'false' or 'follow'
(eaf-setq eaf-browser-dark-mode "true")
(eaf-setq eaf-terminal-dark-mode "true")
(eaf-setq eaf-mindmap-dark-mode "true")
(eaf-setq eaf-pdf-dark-mode "true")  ; maybe 'ignore'

;;; browser

;; continue where you left off
(setq eaf-browser-continue-where-left-off t)

;; make EAF the default browser in Emacs
(setq browse-url-browser-function 'eaf-open-browser)
(defalias 'browse-web #'eaf-open-browser)

;; enable Adblocker
(eaf-setq eaf-browser-enable-adblocker "true")

;; set download path
(eaf-setq eaf-browser-download-path "~/Downloads")

;;; ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
;; enable this if you want `swiper' to use it
;; (setq search-default-mode #'char-fold-to-regexp)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
p(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> o") 'counsel-describe-symbol)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)

;;; org-mode
(setq org-startup-indented t)

;;; which-key-mode
(which-key-mode 1)

(provide 'package-config)
