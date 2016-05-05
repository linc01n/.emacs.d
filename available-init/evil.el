(req-package evil
  :bind ("M-i" . evil-mode)
  :config
  (progn
    (define-key evil-normal-state-map (kbd "s-i") #'evil-insert)
    (define-key evil-insert-state-map (kbd "s-i") #'evil-normal-state)))
