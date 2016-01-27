(req-package evil
  :bind ("M-i" . evil-mode)
  :config
  ((bind-key "s-i" 'evil-insert evil-normal-state-map)
   (bind-key "s-i" 'evil-normal-state evil-insert-state-map)))
