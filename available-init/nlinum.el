(req-package nlinum
  :config
  (add-hook 'prog-mode-hook #'nlinum-mode)
  (setq nlinum-format " %3d\u2502 "))
