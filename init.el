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
(set-face-attribute 'default nil :family "Source Code Pro" :height 180)


(setf inhibit-splash-screen t)
(setq initial-scratch-message nil)
(delete-other-windows)
(global-auto-revert-mode t)

(setq ring-bell-function 'ignore)
(fset 'yes-or-no-p 'y-or-n-p)

(show-paren-mode 1)

(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-control-modifier 'control)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'super)
  (global-set-key (kbd "s-s")
                  'save-buffer)
  (global-set-key (kbd "s-k")
                  'kill-this-buffer)
  (global-set-key (kbd "s-1")
                  'delete-other-windows)
  (global-set-key (kbd "s-c")
                  'kill-ring-save)
  (global-set-key (kbd "s-x")
                  'kill-region)
  (global-set-key (kbd "s-v")
                  'yank)
  (global-set-key (kbd "s-=")
                  'text-scale-increase)
  (global-set-key (kbd "s--")
                  'text-scale-decrease)
  (global-set-key (kbd "s-z")
                  'undo-only)
  (global-set-key (kbd "s-b")
                  'switch-to-buffer)
  (global-set-key (kbd "s-/")
                  'hippie-expand)
  (global-set-key (kbd "s-a")
                  'mark-whole-buffer)
  (global-set-key [s-down]
                  'duplicate-current-line-or-region))

(global-set-key (kbd "C-a") 'smart-beginning-of-line)

(when (not (window-system))
  (xterm-mouse-mode))

(require 'use-package)

(use-package req-package :ensure t)

(req-package darktooth-theme
  :init (load-theme 'darktooth t))

(use-package load-dir :ensure t)
(setq load-dirs t)
(load-dirs-reload)

;; TODO: Break each package init into a separate file

(req-package hc-zenburn-theme
  :defer t
  :disabled t)


(req-package occur-x
  :defer t
  :config (add-hook 'occur-mode-hook 'turn-on-occur-x-mode))

(req-package avy
  :bind (("C-c :" . avy-goto-char)
         ("C-c '" . avy-goto-char-2)
         ("M-g g" . avy-goto-line))
  :config (avy-setup-default))

(req-package js2-mode :mode "\\.js\\'")

(req-package coffee-mode :mode "\\.coffee\\'")

(req-package move-text
  :bind (([M-up] . move-text-up)
         ([M-down] . move-text-down)))

(req-package expand-region
  :bind ("C-=" . er/expand-region))

(req-package which-key
  :defer t
  :config
  (which-key-mode t))

(req-package-finish)
