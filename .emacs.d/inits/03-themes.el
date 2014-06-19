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

(require 'color-theme)
(defun color-theme-djcb-dark ()
  "dark color theme created by djcb, Jan. 2009."
  (interactive)
  (color-theme-install
    '(color-theme-djcb-dark
       ((foreground-color . "#a9eadf")
         (background-color . "black") 
         (background-mode . dark))
       (bold ((t (:bold t))))
       (bold-italic ((t (:italic t :bold t))))
       (default ((t (nil))))
       
       (font-lock-builtin-face ((t (:italic t :foreground "#a96da0"))))
       (font-lock-comment-face ((t (:italic t :foreground "#bbbbbb"))))
       (font-lock-comment-delimiter-face ((t (:foreground "#666666"))))
       (font-lock-constant-face ((t (:bold t :foreground "#197b6e"))))
       (font-lock-doc-string-face ((t (:foreground "#3041c4"))))
       (font-lock-doc-face ((t (:foreground "gray"))))
       (font-lock-reference-face ((t (:foreground "white"))))
       (font-lock-function-name-face ((t (:foreground "#356da0"))))
       (font-lock-keyword-face ((t (:bold t :foreground "#bcf0f1"))))
       (font-lock-preprocessor-face ((t (:foreground "#e3ea94"))))
       (font-lock-string-face ((t (:foreground "#ffffff"))))
       (font-lock-type-face ((t (:bold t :foreground "#364498"))))
       (font-lock-variable-name-face ((t (:foreground "#7685de"))))
       (font-lock-warning-face ((t (:bold t :italic nil :underline nil 
                                     :foreground "yellow"))))
       (hl-line ((t (:background "#112233"))))
       (mode-line ((t (:foreground "#ffffff" :background "#333333"))))
       (region ((t (:foreground nil :background "#555555"))))
       (show-paren-match-face ((t (:bold t :foreground "#ffffff" 
                                    :background "#050505")))))))


(eval-after-load 'color-theme
  '(progn
     (color-theme-initialize)
     (marine-orange)))

