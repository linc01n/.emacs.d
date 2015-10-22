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
  :config
  (setq magit-push-always-verify nil)
  (setq magit-commit-ask-to-stage f)
  :ensure t)

(use-package ibuffer
  :bind ("<f14>" . ibuffer))

(use-package switch-window
  :bind (("S-'" . switch-window)
         ("C-x o" . switch-window))
  :ensure t)

(use-package ace-jump-mode
  :bind ("C-c SPC" . ace-jump-mode)
  :ensure t)

(use-package ag
  :bind ("C-x g" . ag)
  :ensure t)

(use-package hc-zenburn-theme
  :defer t
  :disabled t
  :ensure t)

(use-package darktooth-theme
  :config
  (load-theme 'darktooth t)
  :ensure t)

(use-package whitespace-cleanup-mode
  :defer t
  :config
  (global-whitespace-cleanup-mode 1)
  (add-hook 'before-save-hook 'whitespace-cleanup)
  :ensure t)

(use-package occur
  :bind ("C-;" . occur))

(use-package smex
  :bind ("M-x" . smex)
  :config
  (smex-initialize)
  :ensure t)

(use-package flx-ido
  :defer t
  :ensure t)

(use-package ido-ubiquitous
  :defer t
  :config
    (ido-ubiquitous-mode 1)

  :ensure t)

(use-package ido
  :defer t
  :config
  (setq ido-create-new-buffer 'always)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1)
  (flx-ido-mode 1)
  :ensure t)

(use-package ido-vertical-mode
  :defer t
  :config
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)
  :ensure t)

(use-package occur-x
  :defer t
  :config
  (add-hook 'occur-mode-hook 'turn-on-occur-x-mode)
  :ensure t)

(use-package iedit
  :bind ("C-c ;" . iedit-mode)
  :ensure t)
