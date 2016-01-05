(req-package tabbar
             :config
             (set-face-attribute 'tabbar-default
                                 nil
                                 :background "gray20"
                                 :foreground "gray20"
                                 :box '(:line-width 1 :color "gray20"
                                                    :style nil))
             (set-face-attribute 'tabbar-unselected
                                 nil
                                 :background "gray30"
                                 :foreground "white"
                                 :box '(:line-width 5 :color "gray30"
                                                    :style nil))
             (set-face-attribute 'tabbar-selected
                                 nil
                                 :background "gray75"
                                 :foreground "black"
                                 :box '(:line-width 5 :color "gray75"
                                                    :style nil))
             (set-face-attribute 'tabbar-highlight
                                 nil
                                 :background "white"
                                 :foreground "black"
                                 :underline nil
                                 :box '(:line-width 5 :color "white"
                                                    :style nil))
             (set-face-attribute 'tabbar-button
                                 nil
                                 :box '(:line-width 1 :color "gray20"
                                                    :style nil))
             (set-face-attribute 'tabbar-separator nil
                                 :background "gray20"
                                 :height 0.6)

             ;; Change padding of the tabs
             ;; we also need to set separator to avoid overlapping tabs by highlighted tabs
             (custom-set-variables '(tabbar-separator (quote (0.5))))
             ;; adding spaces
             (defun tabbar-buffer-tab-label (tab)
               "Return a label for TAB.That is, a string used to represent it on the tab bar."
               (let ((label (if tabbar--buffer-show-groups
                                (format "[%s]  "
                                        (tabbar-tab-tabset tab))
                              (format "%s  "
                                      (tabbar-tab-value tab)))))
                 ;; Unless the tab bar auto scrolls to keep the selected tab
                 ;; visible, shorten the tab label to keep as many tabs as possible
                 ;; in the visible area of the tab bar.

                 (if tabbar-auto-scroll-flag
                     label
                   (tabbar-shorten label
                                   (max 1
                                        (/ (window-width)
                                           (length (tabbar-view (tabbar-current-tabset)))))))))

             ;; a function to aid in finding the project root directory
             (defun my-project-root ()
               "Return the root of the project."
               (locate-dominating-file default-directory
                                       ".git"))

             ;; Set the tabgroup based on project; Needs find-files-in-project
             (setq tabbar-buffer-groups-function
                   (lambda ()
                     (let ((dir (expand-file-name default-directory)))
                       (cond ((member (buffer-name) '("*Completions*"
                                                      "*scratch*"
                                                      "*Messages*"
                                                      "*Ediff Registry*"
                                                      "TAGS"
                                                      "*rails*"))
                              (list "#misc"))
                             ;; All Magit status goes the same place
                             ((string-match "^*magit" (buffer-name)) (list "#magic"))
                             ((string-match "^COMMIT_EDITMSG" (buffer-name)) (list "#magic"))
                             ;; All Cider windows
                             ((string-match "^*nrepl-server" (buffer-name)) (list "#cider"))
                             ((string-match "^*cider" (buffer-name)) (list "#cider"))
                             ;; Group tabs based on project root
                             ((my-project-root) (list (my-project-root)))
                             ;; Use the current dir
                             (t (list dir))))))
             (tabbar-mode 1)
             (tabbar-local-mode 1)
             :demand t
             :bind
             (("s-<left>" . tabbar-backward-tab)
              ("s-<right>" . tabbar-forward-tab)))
