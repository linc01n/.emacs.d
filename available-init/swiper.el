(req-package swiper
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  :bind
  ("C-s" . swiper)
  ("C-c k" . counsel-ag))
