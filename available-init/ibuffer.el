(req-package ibuffer
  :bind
  ("s-b" . ibuffer)
  :config
  (progn
    (add-hook 'ibuffer-hook(lambda () (hl-line-mode 1)))))
