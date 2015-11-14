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

(setq ring-bell-function 'ignore)

(show-paren-mode 1)

(load "server")
(unless (server-running-p) (server-start))

(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-control-modifier 'control)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'super)
  (global-set-key (kbd "s-s")
                  'save-buffer)
  (global-set-key (kbd "s-k")
                  'kill-this-buffer))

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

(req-package iedit
  :bind ("C-;" . iedit-mode))

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

(req-package srefactor
  :defer t
  :require srefactor-lisp)

(req-package which-key
  :defer t)

(req-package expand-region
  :bind ("C-=" . er/expand-region))

(req-package which-key
  :config
  (which-key-mode t))

(req-package-finish)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (find-file-in-project whitespace-cleanup-mode which-key wgrep-ag switch-window srefactor smex req-package projectile-rails occur-x move-text markdown-mode magit load-dir js2-mode iedit ido-vertical-mode ido-ubiquitous hc-zenburn-theme flx-ido expand-region darktooth-theme coffee-mode avy ag))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
