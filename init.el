(require 'package)
(setq package-archives '(("gnu" ."http://elpa.gnu.org/packages/")
                         ("melpa" ."http://melpa.org/packages/")
                         ("org". "http://orgmode.org/elpa/")))


(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

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
                  'duplicate-current-line-or-region)
  (global-set-key (kbd "<s-right>")
                  'next-buffer)
  (global-set-key (kbd "<s-left>")
                  'previous-buffer)

  ;; window-splitting
  (global-set-key (kbd "s-1")
                  'delete-other-windows)
  (global-set-key (kbd "s-2")
                  'split-window-vertically)
  (global-set-key (kbd "s-3")
                  'split-window-horizontally)
  (global-set-key (kbd "s-4")
                  'delete-other-windows-vertically))

(global-set-key (kbd "C-a") 'smart-beginning-of-line)

(when (not (window-system))
  (xterm-mouse-mode))

(require 'use-package)

(use-package req-package :ensure t)

(req-package darktooth-theme
  :init (load-theme 'darktooth t))

(req-package load-dir
  :config
  (setq load-dirs (cons "~/.emacs.d/load.d" '("~/.emacs.d/site-lisp")))
  (load-dirs-reload))


;; TODO: Break each package init into a separate file

(req-package hc-zenburn-theme
  :defer t
  :disabled t)


(req-package occur-x
  :defer t
  :config (add-hook 'occur-mode-hook 'turn-on-occur-x-mode))

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(current-language-environment "UTF-8")
 '(package-selected-packages
   (quote
    (literate-coffee-mode yasnippet yaml-mode whitespace-cleanup-mode which-key vlf visual-regexp-steroids tabbar switch-window swiper string-edit spaceline solarized-theme smooth-scrolling smex smartparens rvm robe req-package rainbow-delimiters projectile-rails occur-x nlinum neotree multiple-cursors move-text markdown-mode magit load-dir jsx-mode json-mode js2-mode insert-shebang indent-guide iedit ido-vertical-mode ido-ubiquitous hc-zenburn-theme haml-mode git-timemachine git-gutter-fringe flx-ido expand-region exec-path-from-shell evil edit-server discover-my-major dired+ darktooth-theme company coffee-mode avy anzu ag)))
 '(tab-width 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
