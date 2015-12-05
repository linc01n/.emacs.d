(req-package linum
  :config
  (add-hook 'prog-mode-hook #'linum-mode)
  (setq linum-format "%3d\u2502"))
