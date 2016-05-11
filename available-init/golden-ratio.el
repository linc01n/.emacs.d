(req-package golden-ratio
  :config
  (progn
    (advice-add #'select-window
                :after
                #'(lambda
                    (select-window-function &rest ...)
                    (unless (minibuffer-window-active-p (selected-window))
                      (golden-ratio))))
    (golden-ratio-mode 1)))
