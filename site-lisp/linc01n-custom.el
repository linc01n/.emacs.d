(custom-set-variables
 '(blink-cursor-mode nil)
 '(current-language-environment "UTF-8")
 '(tab-width 2))
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
