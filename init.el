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

(req-package load-dir)
;; TODO: Break each package init into a separate file
(req-package magit
  :bind ("M-`" . magit-status)
  :init
  (when (eq system-type 'darwin) ;; mac specific settings
    (setq magit-git-executable "/usr/local/bin/git"))
  :config
  (setq magit-push-always-verify nil)
  (setq magit-commit-ask-to-stage f))

(req-package ibuffer
  :bind ("<f14>" . ibuffer):config
  (add-hook 'ibuffer-hook
            (lambda ()
              (hl-line-mode 1))))

(req-package switch-window
  :bind (("s-'" . switch-window)
         ("C-x o" . switch-window)))

(req-package ag
  :bind ("C-x g" . ag))

(req-package remember-theme
  :load-path "vendor"
  :config
  (remember-theme-load)
  (add-hook 'kill-emacs-hook 'remember-theme-save))

(req-package hc-zenburn-theme
  :defer t
  :disabled t)

(req-package darktooth-theme
  :config (load-theme 'darktooth t))

(req-package whitespace-cleanup-mode
  :config
  (global-whitespace-cleanup-mode 1)
  (add-hook 'before-save-hook 'whitespace-cleanup))

(req-package smex
  :bind ("M-x" . smex)
  :config
  (smex-initialize))

(req-package flx-ido)

(req-package ido-ubiquitous
  :require ido
  :config
  (ido-ubiquitous-mode 1))

(req-package ido
  :require ido-vertical-mode flx-ido
  :config
  (setq ido-create-new-buffer 'always)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1)
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)
  (flx-ido-mode 1))

(req-package ido-vertical-mode)

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

(req-package expand-region)

(req-package-finish)
