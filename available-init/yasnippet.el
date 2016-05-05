(req-package yasnippet
  :config
  (progn
    (yas-reload-all)
    (add-hook 'prog-mode-hook #'yas-minor-mode)))
