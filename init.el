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
(use-package magit
  :bind ("M-`" . magit-status)
  )

(use-package ibuffer
  :bind ("<f2>" . ibuffer)
  )
