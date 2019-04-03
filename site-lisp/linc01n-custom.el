(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(current-language-environment "UTF-8")
 '(package-selected-packages
   (quote
    (nix-mode zenburn-theme yasnippet yaml-mode whitespace-cleanup-mode which-key wgrep-ag vlf visual-regexp-steroids tabbar switch-window swiper string-edit spaceline smooth-scrolling smex smartparens rvm robe req-package rainbow-delimiters projectile-rails php-mode ox-gfm osx-plist org-bullets nlinum neotree multiple-cursors move-text markdown-mode magit-popup magit load-dir jsx-mode json-mode js2-mode insert-shebang indent-guide iedit ido-vertical-mode ido-ubiquitous haml-mode golden-ratio go-eldoc git-timemachine git-gutter-fringe flyspell-popup flycheck-gometalinter flx-ido expand-region exec-path-from-shell evil el-get edit-server discover-my-major dired+ diminish company-go coffee-mode avy anzu aggressive-indent ag)))
 '(tab-width 2)
 '(tabbar-separator (quote (0.5))))
(setq js-indent-level 2)
(setq json-reformat:indent-width 2)

(setq-default indent-tabs-mode nil)
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
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
