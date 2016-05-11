(req-package org
  :mode ("\\.org\\'" . org-mode))

(req-package org-bullets
  :require org
  :init
  (progn
    (add-hook 'org-mode-hook 'org-bullets-mode)))
