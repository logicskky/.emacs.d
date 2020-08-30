;;;; package-doom-modeline.el -- Logic Emacs

(use-package doom-modeline
    :ensure t
    :defer t
    :hook (after-init . doom-modeline-init))

(provide 'package-doom-modeline)
