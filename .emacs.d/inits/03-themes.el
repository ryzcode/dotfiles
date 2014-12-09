;; MarineOrange
(defun marine-orange ()
  (interactive)
  (color-theme-install
   '(marine-orange
     ((background-color . "#323539")
      (background-mode . light)
      (border-color . "#000000")
      (cursor-color . "#ffffff")
      (foreground-color . "#ffffff")
      (mouse-color . "black"))
     (fringe ((t (:background "#000000"))))
     (mode-line ((t (:foreground "#0a1aff" :background "e2e2e9"))))
     (region ((t (:background "#8e060d"))))
     (font-lock-builtin-face((t (:foreground "#2efa45"))))
     (font-lock-comment-face ((t (:foreground "#9e9e9e"))))
     (font-lock-function-name-face ((t (:foreground "#52d3ff"))))
     (font-lock-keyword-face ((t (:foreground "#ffb90f"))))
     (font-lock-string-face ((t (:foreground "#29ffcd"))))
     (font-lock-type-face ((t (:foreground "#ffffff"))))
     (font-lock-constant-face ((t (:foreground "#bec8ef"))))
     (font-lock-variable-name-face ((t (:foreground "bec8ef"))))
     (minibuffer-prompt ((t (:foreground "#e8302c" :bold t))))
     (font-lock-warning-face ((t (:foreground "red" :bold t))))
     )))
(provide 'marine-orange)


(eval-after-load 'color-theme
  '(progn
     (color-theme-initialize)
     (marine-orange)))

