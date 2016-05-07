(defvar spell-checking-enable-by-default t
  "Enable spell checking by default.")

(defvar spell-checking-enable-auto-dictionary nil
  "Specify if auto-dictionary should be enabled or not.")

(defun spell-checking/add-flyspell-hook (hook)
  "Add `flyspell-mode' to the given HOOK, if
`spell-checking-enable-by-default' is true."
  (when spell-checking-enable-by-default
    (add-hook hook 'flyspell-mode)))


(use-package flyspell
  :defer t
  :init
  (progn
    (spell-checking/add-flyspell-hook 'text-mode-hook)
    (when spell-checking-enable-by-default
      (add-hook 'prog-mode-hook 'flyspell-prog-mode))

    (spacemacs|add-toggle spelling-checking
      :status flyspell-mode
      :on (if (derived-mode-p 'prog-mode)
              (flyspell-prog-mode)
            (flyspell-mode))
      :off (progn
             (flyspell-mode-off)
             ;; Also disable auto-dictionary when disabling spell-checking.
             (when (fboundp 'auto-dictionary-mode) (auto-dictionary-mode -1)))
      :documentation "Enable automatic spell checking.")))
