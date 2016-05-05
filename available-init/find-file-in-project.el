(req-package find-file-in-project
  :bind ("s-t". find-file-in-project)
  :config
  (progn
    (ido-mode 1)
    (setq ffip-prefer-ido-mode t)))
