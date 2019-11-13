;;; org-standup-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-standup" "org-standup.el" (0 0 0 0))
;;; Generated autoloads from org-standup.el

(autoload 'org-standup-today "org-standup" "\
Create or open the daily standup entry for today.

\(fn)" t nil)

(autoload 'org-standup-template-init "org-standup" "\
Initialize the daily standup entry template.

\(fn)" nil nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "org-standup" '("org-standup-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-standup-autoloads.el ends here
