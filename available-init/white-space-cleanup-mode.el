(req-package whitespace-cleanup-mode
  :config
  (progn
    (global-whitespace-cleanup-mode 1)
    (add-hook 'before-save-hook 'whitespace-cleanup)))
