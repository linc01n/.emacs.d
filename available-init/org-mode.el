(req-package org
  :mode ("\\.org\\'" . org-mode)
  :require ox-md
  :pin org
  :config
  (progn
    (add-to-list 'org-latex-packages-alist '("" "minted"))
    (setq org-latex-listings 'minted)
    (setq org-latex-pdf-process
          '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
            "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
            "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
    (setq org-latex-minted-options '(("breaklines" "true")))
    ))


(req-package org-bullets
  :require org
  :init
  (progn
    (add-hook 'org-mode-hook 'org-bullets-mode)))

(req-package org-standup
  :config
  (add-hook 'after-init-hook
            (lambda()
              (eval-after-load 'autoinsert (org-standup-template-init))
              (add-hook 'find-file-hook 'auto-insert)
              ))
  )
