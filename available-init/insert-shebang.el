(req-package insert-shebang
  :init
  (setq insert-shebang-file-types
        '(("py" . "python")
          ("sh" . "bash")
          ("pl" . "perl")
          ("rb" . "ruby")))
  (setq insert-shebang-track-ignored-filename nil)
  :config
  (progn
    (remove-hook 'find-file-hook 'insert-shebang)
    (add-to-list 'find-file-not-found-functions 'insert-shebang)))
