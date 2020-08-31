;;;; My Emacs Configuration

(add-to-list 'load-path "~/.emacs.d/modules/")
(add-to-list 'load-path "~/.emacs.d/modules/package-config/")
(add-to-list 'load-path "~/.emacs.d/other-packages/emacs-application-framework/")

(require 'init-basic)
(require 'init-package)
(require 'init-ui)
(require 'package-dired-mode)
(require 'package-doom-modeline)
(require 'package-ivy)
(require 'package-all-the-icons)
(require 'eaf)
(require 'package-eaf)
