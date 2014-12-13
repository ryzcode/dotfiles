
;;;----> Add exec path
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setq exec-path (append exec-path '("/usr/local/bin")))

;;;----> Scroll by line
(setq scroll-step            1
      scroll-conservatively  10000)

;;;----> Word wrap on vertical split
(setq truncate-partial-width-windows nil)

;;;----> Disable backup
(setq backup-inhibited t)

;;;----> Disable auto save
(setq auto-save-default nil)

;;;----> Ignore case for completion
(setq completion-ignore-case t)

;;;----> Tab
(setq-default tab-width 4)
(setq default-tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))

;;;----> Disable tab
(setq-default indent-tabs-mode nil)

;;;----> Yes-No to y-n
;(fset 'yes-or-no-p 'y-or-n-p)
(defalias 'yes-or-no-p 'y-or-n-p)

;;;----> Log more
(setq message-log-max 10000)

;;;----> Always follow symlink
(setq vc-follow-symlinks t)

;;;----> Auto reload
(global-auto-revert-mode 1)

;;;----> Enable CUA mode for rectangle selection
(cua-mode t)

;;;----> Slow down the mouse wheel scroll speed
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)


