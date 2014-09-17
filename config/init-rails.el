(require-package 'rinari)
(require-package 'rhtml-mode)
(require-package 'haml-mode)
(require-package 'less-css-mode)
(require-package 'scss-mode)
(require-package 'less-css-mode)

(require 'rinari)

(add-hook 'ruby-mode-hook
          (lambda ()
            (rinari-launch)))

(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
          (lambda () (rinari-launch)))

(require 'haml-mode)
(add-hook 'haml-mode-hook
          (lambda ()
            (set (make-local-variable 'tab-width) 2)
            (rinari-launch)))

(require 'less-css-mode)
(add-hook 'less-css-mode-hook
          (lambda () (rinari-launch)))

(require 'scss-mode)
;; Disable auto compilation
(setq scss-compile-at-save nil)

(dolist (pattern '("\\.rb$" "Rakefile$" "\.rake$" "\.rxml$" "\.rjs$" ".irbrc$" "\.builder$" "\.ru$" "\.gemspec$" "Gemfile$"))
  (add-to-list 'auto-mode-alist (cons pattern 'enh-ruby-mode)))

(provide 'init-rails)
