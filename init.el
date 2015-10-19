(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/")
       '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(load "~/.emacs.d/my-gui.el")
(setq-default indent-tabs-mode nil)

(require 'use-package)

;; TODO: Break each package init into a separate file
(use-package magit
  :bind ("M-`" . magit-status)
  :ensure t)

(use-package ibuffer
  :bind ("<f14>" . ibuffer))

(use-package switch-window
  :bind (("S-'" . switch-window)
         ("C-x o" . switch-window))
  :ensure t)
