;;;----> Workflow states
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

;;;----> Set Shortcuts
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;;;----> Set files used for Agenda list
(setq org-agenda-files (list "~/Dropbox/org/memo.org"
                             "~/Dropbox/org/coding.org"
                             "~/Dropbox/org/ms.org"
                             "~/Dropbox/org/personal.org"))

;;;----> Set templates for org-capture mode (C-c c)
(setq org-capture-templates
      '(("m" "Memo" entry (file+headline "~/Dropbox/org/memo.org" "Memo")
         "* TODO %?n %in %a")
;;        ("j" "Journal" entry (file+datetree "~/Dropbox/org/journal.org")
;;        "* %?n %Un %in %a")
;;        ("n" "Note" entry (file+headline "~/Dropbox/org/notes.org" "Notes")
;;         "* %?n %Un %i")
        ))

