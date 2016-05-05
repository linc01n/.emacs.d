(req-package ibuffer
  :bind
  ("<f14>" . ibuffer)
  :config
  (progn
    (add-hook 'ibuffer-hook(lambda () (hl-line-mode 1)))))
