(req-package robe
  :require rvm
  :init
  (progn
    (eval-after-load 'company
      '(push 'company-robe company-backends))
    (defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
      (rvm-activate-corresponding-ruby))
    (add-hook 'ruby-mode-hook 'robe-mode)))
