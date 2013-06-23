;; Scroll by line
(setq scroll-step            1
      scroll-conservatively  10000)

;; Word wrap on vertical split
(setq truncate-partial-width-windows nil)

;; Disable backup
(setq backup-inhibited t)

;; Disable auto save
(setq auto-save-default nil)

;; Ignore case for completion
(setq completion-ignore-case t)

;; Tab
(setq-default tab-width 4)
(setq default-tab-width 4)
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                      64 68 72 76 80 84 88 92 96 100 104 108 112 116 120))

;; Yes-No to y-n
;;(fset 'yes-or-no-p 'y-or-n-p)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Log more
(setq message-log-max 10000)

;; Always follow symlink
(setq vc-follow-symlinks t)

;; Auto reload
(global-auto-revert-mode 1)
