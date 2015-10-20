(require 'package)

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(load "~/.emacs.d/my-gui.el")
(setq-default indent-tabs-mode nil)

(require 'use-package)

;; TODO: Break each package init into a separate file
(use-package magit
  :bind ("M-`" . magit-status)
  :ensure t)

(use-package ibuffer
  :bind ("<f14>" . ibuffer))

(use-package switch-window
  :bind (("S-'" . switch-window)
         ("C-x o" . switch-window))
  :ensure t)

(use-package redo+
  :defer t
  :load-path "~/.emacs.d/lisp")

(use-package mac-key-mode
  :defer t
  :config
   (mac-key-mode 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (darktooth)))
 '(custom-safe-themes
   (quote
    ("00f33c1c844d52ea581f6e6eefb00d44bfc0ce8c69da8d302cf6fdbc279267b5" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

