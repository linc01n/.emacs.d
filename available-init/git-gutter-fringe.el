(req-package git-gutter-fringe
  :config
  (progn
    (add-hook 'prog-mode-hook #'git-gutter-mode)))
