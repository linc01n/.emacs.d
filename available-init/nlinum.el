(req-package nlinum
  :config
  (progn
    (add-hook 'prog-mode-hook #'nlinum-mode)
    (setq nlinum-format " %3d\u2502 ")))
