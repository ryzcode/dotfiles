;;; 90-keybind.el --- Keybind setup
;;
;; by Ryzcode
;; since Oct 2015
;;
;;; Commentary:
;;
;; This file is used for defining keybind setup
;;
;;; Code:

;;;----> Keyboard binding setup
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-v") 'other-window)
(global-set-key (kbd "M-SPC") 'other-window)       ;;Alt+Space
(global-set-key (kbd "M-[ 1 5") 'revert-buffer)    ;;F5
;(global-set-key 
(global-set-key (kbd "M-t") 'helm-for-files)       ;;Alt+t
(global-set-key (kbd "C-_") 'redo)                 ;;Ctrl+-


