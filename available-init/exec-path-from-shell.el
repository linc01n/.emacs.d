(req-package exec-path-from-shell
  :config
  (progn
    (when (memq window-system '(mac ns))
      (exec-path-from-shell-initialize)
      (exec-path-from-shell-copy-env "GOPATH"))))
