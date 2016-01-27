(req-package evil
  :config
  (global-set-key (kbd "M-i") #'evil-mode)
  (define-key evil-normal-state-map (kbd "s-i") #'evil-insert)
  (define-key evil-insert-state-map (kbd "s-i") #'evil-normal-state))
