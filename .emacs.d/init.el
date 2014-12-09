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
;;; Thanks to http://batsov.com/
(require 'cl) ; loop requires cl to be loaded - need to review this dependency
(defvar prelude-packages
  '(init-loader helm web-mode gist cider clojure-mode color-theme color-moccur dash epl
                gh ghc ghci-completion git magit haskell-mode highlight-symbol
                paredit rainbow-blocks rainbow-delimiters rainbow-mode
                yasnippet)
;  '(ack-and-a-half auctex clojure-mode coffee-mode deft expand-region
;                   gist groovy-mode haml-mode haskell-mode inf-ruby
;                   magit magithub markdown-mode paredit projectile python
;                   sass-mode rainbow-mode scss-mode solarized-theme
;                   volatile-highlights yaml-mode yari zenburn-theme)
  "A list of packages to ensure are installed at launch.")
(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))
(unless (prelude-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))
(provide 'prelude-packages)



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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
