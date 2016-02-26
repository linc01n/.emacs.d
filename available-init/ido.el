(req-package ido-ubiquitous
  :require ido ido-completing-read+
  :config
  (ido-ubiquitous-mode 1))

(req-package ido
  :require ido-vertical-mode flx-ido
  :init
  (defun ido-tab-do-nothing () (interactive))
  :config
  (setq ido-create-new-buffer 'always)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1)
  (ido-vertical-mode 1)
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)
  (flx-ido-mode 1)
  (bind-keys :map ido-completion-map        ("TAB" . ido-tab-do-nothing))
  (bind-keys :map ido-common-completion-map ("TAB" . ido-tab-do-nothing))
  (bind-keys :map ido-file-completion-map   ("TAB" . ido-tab-do-nothing))
  (bind-keys :map ido-buffer-completion-map ("TAB" . ido-tab-do-nothing)))

(req-package ido-vertical-mode)

(req-package flx-ido)
