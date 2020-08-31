;;;; package-eaf.el -- Logic Emacs

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

(provide 'package-eaf)
