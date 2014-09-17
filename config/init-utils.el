(defmacro after (feature &rest body)
    "After FEATURE is loaded, evaluate BODY."
      (declare (indent defun))
        `(eval-after-load ,feature
                               '(progn ,@body)))


;; Undo tree mode
(require-package 'undo-tree)
; C-_ C-/ == undo
; M-_ C-? == redo
; C-x u   == visualize tree
(global-undo-tree-mode)

;; Org-mode

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


(provide 'init-utils)
