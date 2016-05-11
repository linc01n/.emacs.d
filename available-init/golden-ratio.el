(req-package golden-ratio
  :config
  (progn
    (golden-ratio-mode 1)
    (add-hook 'buffer-list-update-hook #'golden-ratio)))
