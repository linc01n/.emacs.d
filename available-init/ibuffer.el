(req-package ibuffer
  :bind
  ("<f14>" . ibuffer)
  :config
  (add-hook 'ibuffer-hook(lambda () (hl-line-mode 1))))
