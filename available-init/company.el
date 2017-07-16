(req-package company
  :config
  (progn
    (add-hook 'after-init-hook 'global-company-mode)
    (setq 'company-idle-delay 0)))
