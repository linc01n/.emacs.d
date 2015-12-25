(req-package insert-shebang
  :init
  (setq insert-shebang-file-types
         '(("py" . "python")
           ("sh" . "bash")
           ("pl" . "perl")
           ("rb" . "ruby")))
  :config
  (add-hook 'find-file-hook 'insert-shebang))
