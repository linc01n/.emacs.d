(req-package flyspell
  :init
  (setq flyspell-issue-message-flag nil)
  (local-unset-key (kbd "C-;"))
  :config
  (add-hook 'prog-mode-hook (lambda ()(flyspell-prog-mode)))
  (setq ispell-program-name "aspell"
        ispell-extra-args '("--sug-mode=ultra" "--lang=en_US" "--run-together" "--run-together-limit=5" "--run-together-min=2")))
