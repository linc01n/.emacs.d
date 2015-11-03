(req-package ido-ubiquitous
  :require ido
  :config
  (ido-ubiquitous-mode 1))

(req-package ido
  :require ido-vertical-mode flx-ido
  :config
  (setq ido-create-new-buffer 'always)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1)
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)
  (flx-ido-mode 1))

(req-package ido-vertical-mode)

(req-package flx-ido)
