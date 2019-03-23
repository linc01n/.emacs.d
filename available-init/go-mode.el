(defun go-mode-setup ()
  (setq compile-command "go build -v && go test -v && go vet")
  (define-key (current-local-map) "\C-c\C-c" 'compile)
  (go-eldoc-setup)
  (setq gofmt-command "goimports")
  (set (make-local-variable 'company-backends) '(company-go))
  (company-mode)

  (add-hook 'before-save-hook 'gofmt-before-save))

(req-package go-mode
  :config
  (progn (add-hook 'go-mode-hook 'go-mode-setup))
  :bind
  ("M-." . godef-jump))

(req-package go-flymake
  :require flymake)
(req-package flycheck-gometalinter
  :require flycheck)

(req-package go-eldoc)
