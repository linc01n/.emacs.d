(req-package flyspell
  :init
  (setq flyspell-issue-message-flag nil)
  :config
  (add-hook 'prog-mode-hook (lambda ()(flyspell-prog-mode))))
