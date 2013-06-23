;; RyzCode Emacs settings
;; Since 2013/06/23
;;

;; === Set the load path
(setq load-path
      (append
       (list
        (expand-file-name "~/.emacs.d/")
        (expand-file-name "~/.emacs.d/elisp/")
        (expand-file-name "~/.emacs.d/elisp/helm/")
        (expand-file-name "~/.emacs.d/elisp/color-moccur")
        (expand-file-name "~/.emacs.d/elisp/mode/")
        (expand-file-name "~/.emacs.d/elisp/mode/html/")
        (expand-file-name "~/.emacs.d/elisp/mode/nxhtml/")
        (expand-file-name "~/.emacs.d/elisp/mode/css/")
        (expand-file-name "~/.emacs.d/elisp/mode/php-mode/")
        (expand-file-name "~/.emacs.d/elisp/mode/python-mode/")
        (expand-file-name "~/.emacs.d/elisp/mode/perl/")
        (expand-file-name "~/.emacs.d/elisp/mode/psgml/")
        (expand-file-name "~/.emacs.d/elisp/mode/yml/")
        (expand-file-name "~/.emacs.d/elisp/mode/javascript/")
        (expand-file-name "~/.emacs.d/elisp/mode/yatex/")
        (expand-file-name "~/.emacs.d/elisp/auto-complete/")
        (expand-file-name "~/.emacs.d/elisp/mode/hatena/")
        (expand-file-name "~/.emacs.d/elisp/mode/ruby/")
        (expand-file-name "~/.emacs.d/elisp/mode/magit/share/emacs/site-lisp/")
        (expand-file-name "~/.emacs.d/elisp/mode/git/")
        (expand-file-name "~/.emacs.d/elisp/mode/evernote/")
        )
       load-path))

;; === Any installation via install-elisp
(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/elisp/")

;; === package extension
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; === all detailed init lines are under the following directory
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;; == Debugger for init-loader.el
(defun init-loader-re-load (re dir &optional sort)
  (let ((load-path (cons dir load-path)))
    (dolist (el (init-loader--re-load-files re dir sort))
      (condition-case e
          (let ((time (car (benchmark-run (load (file-name-sans-extension el))))))
            (init-loader-log (format "loaded %s. %s" (locate-library el) time)))
        (error
         ;; (init-loader-error-log (error-message-string e)) ；削除
         (init-loader-error-log (format "%s. %s" (locate-library el) (error-message-string e))) ;追加
         )))))
