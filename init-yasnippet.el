(require-package 'yasnippet)
(require 'yasnippet) ;; not yasnippet-bundle
(yas-global-mode t)

;; Develop in ~/emacs.d/mysnippets, but also
;; try out snippets in ~/Downloads/interesting-snippets
(setq yas/root-directory '("~/.emacs.d/elpa/yasnippet-20130505.2115/snippets"
                           "~/.emacs.d/snippets"))

;; Map `yas/load-directory' to every element
(mapc 'yas/load-directory yas/root-directory)
;(yas/load-directory "~/.emacs.d/snippets")

(provide 'init-yasnippet)

