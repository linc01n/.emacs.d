(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))


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

(use-package ace-jump-mode
  :defer t
  :bind ("C-c SPC" . ace-jump-mode)
  :ensure t)

(use-package hc-zenburn-theme
  :defer t
  :ensure t)

(use-package darktooth-theme
  :config
  (load-theme 'darktooth t)
  :ensure t)
