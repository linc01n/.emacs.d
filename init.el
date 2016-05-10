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
(delete-selection-mode 1)
(setq vc-follow-symlinks t)
(setq truncate-lines t)

(when (not (window-system))
  (xterm-mouse-mode))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package req-package :ensure t)

(req-package load-dir
  :config
  (setq load-dirs (cons "~/.emacs.d/site-lisp" '("~/.emacs.d/load.d")))
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
