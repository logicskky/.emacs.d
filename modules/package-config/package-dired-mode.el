;;;; package-dired-mode.el -- Logic Emacs

;; 让 dired 只用唯一的一个缓冲区
(put 'dired-find-alternate-file 'disabled nil)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(provide 'package-dired-mode)
