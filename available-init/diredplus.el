(req-package dired+
  :init
  (progn
    (diredp-toggle-find-file-reuse-dir 1))
  :config
  (progn
    (setq diredp-hide-details-initially-flag t)))
