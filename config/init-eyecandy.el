;; Remove scrollbars and toolbars
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(menu-bar-mode -1)

(line-number-mode t)
(column-number-mode t)

(display-time-mode t)

(transient-mark-mode 1)
(delete-selection-mode t)
(setq search-highlight t)

;; No blinking cursor
(blink-cursor-mode 0)

;; Show matching parenthesis
(show-paren-mode 1)

;; Get rid of the ugly vertical separator
(set-face-background 'vertical-border "black")
(set-face-foreground 'vertical-border "black")

;; Colors when writing hexadecimal shits
(require-package 'rainbow-mode)

;; Themes
(load-file (concat user-emacs-directory "themes/color-theme-molokai.el"))
(color-theme-molokai)

(provide 'init-eyecandy)
