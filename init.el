;;;; init.el -- Logic Emacs

(add-to-list 'load-path "~/.emacs.d/modules/")
(add-to-list 'load-path "~/.emacs.d/modules/package-config/")
(add-to-list 'load-path "~/.emacs.d/other-packages/emacs-application-framework/")

(require 'init-basic)
(require 'init-package)
(require 'init-ui)
(require 'eaf)
(require 'package-dired-mode)
(require 'package-doom-modeline)
(require 'package-ivy)
(require 'package-all-the-icons)
(require 'package-eaf)
(require 'package-which-key)
