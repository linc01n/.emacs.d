(req-package exec-path-from-shell
  :config
  (when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)))
