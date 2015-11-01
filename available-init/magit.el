(req-package magit
  :bind ("M-`" . magit-status)
  :init
  (when (eq system-type 'darwin) ;; mac specific settings
    (setq magit-git-executable "/usr/local/bin/git"))
  :config
  (setq magit-push-always-verify nil)
  (setq magit-commit-ask-to-stage f))
