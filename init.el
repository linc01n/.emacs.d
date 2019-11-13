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

(setq custom-file "~/.emacs.d/site-lisp/linc01n-custom.el")
(load custom-file)

(req-package load-dir
  :config
  (setq load-dirs (cons "~/.emacs.d/site-lisp" '("~/.emacs.d/load.d")))
  (load-dirs-reload))

(req-package-finish)
