(req-package swiper
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (advice-add 'swiper :after #'recenter-top-bottom))
  :bind
  ("C-s" . swiper))
