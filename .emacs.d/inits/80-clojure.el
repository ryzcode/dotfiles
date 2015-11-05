;;;----> Copied from www.braveclojure.com
;; clojure
(add-to-list 'auto-mode-alist '("\\.edn$" . clojure-mode))
;; cider
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq cider-repl-pop-to-buffer-on-connect t)
(setq cider-popup-stacktraces t)
(setq cider-repl-popup-stacktraces t)
(setq cider-auto-select-error-buffer t)
(setq cider-repl-history-file "~/.emacs.d/cider-history")
(setq cider-repl-wrap-history t)

(add-hook 'cider-repl-mode-hook 'subword-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)

;;;----> Change REPL session name buffer
; this will be -> *cider-repl/project-name*
(setq nrepl-buffer-name-separator "/")

;;;----> Add result prefix for REPL eval
(setq cider-repl-result-prefix ";; => ")
(setq cider-interactive-eval-result-prefix ";; => ")

;;;----> Configure word setup compatible with camel cases
(add-hook 'cider-repl-mode-hook 'subword-mode)

;;;----> Copied from:
; http://blog.cesarolea.com/clojure-and-emacs-sitting-in-a-tree/
; clojure auto complete setup
(require 'ac-nrepl)
(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)
(add-hook 'cider-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'cider-repl-mode))

;;;----> Popup setup - copied from:
; http://fgiasson.com/blog/index.php/2014/05/22/my-optimal-gnu-emacs-settings-for-developing-clojure-so-far/
;; Poping-up contextual documentation
(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))
(add-hook 'clojure-mode-hook 'paredit-mode)

