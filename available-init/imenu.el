(req-package imenu
  :config
  (progn
    (add-hook 'imenu-after-jump-hook 'recenter-top-bottom))
  :bind ("s-r" . imenu))
