(req-package flyspell
  :init
  (setq flyspell-issue-message-flag nil)
  (local-unset-key (kbd "C-;"))
  :config
  (add-hook 'prog-mode-hook (lambda ()(flyspell-prog-mode))))
