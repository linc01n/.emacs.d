(req-package imenu
  :config (add-hook 'imenu-after-jump-hook 'recenter-top-bottom)
  :bind ("s-r" . imenu))
