(defun redshift ()
  (interactive)
  (let ((sql-name "redshift")
        (sql-product 'postgres)
        (sql-server "")
        (sql-user "")
        (sql-password "")
        (sql-database "")
        (sql-port 5439))
    (delete-other-windows)
    (sql-postgres)
    (other-window -1)
    (switch-to-buffer "*sql*" t)
    (sql-mode)))
