(require 'package)
(setq package-archives '(("gnu" ."http://elpa.gnu.org/packages/")
                         ("melpa" ."http://melpa.org/packages/")))


(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(load "~/.emacs.d/my-gui.el")
(setq-default indent-tabs-mode nil)


(setf inhibit-splash-screen t)
(setq initial-scratch-message nil)
(delete-other-windows)

(setq visible-bell 1)

(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-control-modifier 'control)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'super)
  (global-set-key (kbd "s-s")
                  'save-buffer))

(require 'use-package)

(use-package req-package :ensure t)

(use-package load-dir
  :demand t
  :config
  (setq load-dirs t)
  (load-dirs-reload))
;; TODO: Break each package init into a separate file

(req-package hc-zenburn-theme
  :defer t
  :disabled t)

(req-package darktooth-theme
  :config (load-theme 'darktooth t))

(req-package occur-x
  :defer t
  :config (add-hook 'occur-mode-hook 'turn-on-occur-x-mode))

(req-package iedit
  :bind ("C-;" . iedit-mode))

(req-package avy
  :bind (("C-c :" . avy-goto-char)
         ("C-c '" . avy-goto-char-2)
         ("M-g g" . avy-goto-line))
  :config (avy-setup-default))

(req-package projectile
  :bind ("s-t" . projectile-find-file))

(req-package projectile-rails :require projectile)

(req-package js2-mode :mode "\\.js\\'")

(req-package coffee-mode :mode "\\.coffee\\'")

(req-package move-text
  :bind (([M-up] . move-text-up)
         ([M-down] . move-text-down)))

(req-package srefactor
  :defer t
  :require srefactor-lisp)

(req-package which-key
  :defer t)

(req-package expand-region
  :bind ("C-=" . er/expand-region))

(req-package-finish)
