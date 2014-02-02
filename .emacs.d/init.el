;; RyzCode Emacs settings
;; Since 2013/06/23
;;
;; This file defines package dependency and init-loader.el installation
;; More customized settings are defined with init-loader under inits/ directory
;;
;; ==============================
;; emacs.d/
;; |--> init.el
;; |--> inits/
;;      |--> other startup files
;; |--> elpa/
;;      |--> package files
;; ==============================
;;


;;;----> Installation of package.el
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;;----> Installation packages listed below if not yet installed
(defvar package-list '(
                     init-loader
                     helm
                     web-mode
                   )
  "List of packages to install at startup")
(defun package-list-install ()
  "Install package list \(package-list variable\) if not yet installed"
  (dolist (p package-list)
    (when (not (package-installed-p p))
      (package-install p))))
(package-list-install)


;;;----> Installation of init-loader.el
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")

;;;----> Debugger for init-loader.el
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

