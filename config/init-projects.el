(require-package 'projectile)
(require-package 'grizzl)
(require-package 'ag)
(require-package 'helm)

(require 'grizzl)
(require 'projectile)

(setq projectile-completion-system 'grizzl)
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(projectile-global-mode)

(require 'helm-config)

(defvar root-dir default-directory)
(defun helm-do-grep-recursive ()
  "Like `helm-do-grep', but greps recursively by default."
  (interactive)
    (helm-do-grep-1 (list root-dir) t nil '("*")))

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-c C-y") 'helm-do-grep-recursive)
(global-unset-key (kbd "C-x c"))

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-quick-update                     t ; do not display invisible candidates
      helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-buffers-fuzzy-matching           t ; fuzzy matching buffer names when non--nil
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(helm-mode 1)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebihnd tab to do persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(require-package 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)

(provide 'init-projects)
