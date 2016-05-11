(require 'package)
(setq package-archives '(("gnu" ."https://elpa.gnu.org/packages/")
                         ("melpa" ."https://melpa.org/packages/")
                         ("org". "https://orgmode.org/elpa/")))


(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package req-package :ensure t)

(req-package load-dir
  :config
  (setq load-dirs (cons "~/.emacs.d/site-lisp" '("~/.emacs.d/load.d")))
  (load-dirs-reload))

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
