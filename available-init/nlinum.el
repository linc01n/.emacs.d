(req-package nlinum
  :defer 1
  :config
  (add-hook 'prog-mode-hook #'nlinum-mode)
  (setq nlinum-format " %3d\u2502 "))
