;;; for cc-mode, create by ryanking

(require-package 'google-c-style)
(require 'google-c-style)

(add-hook 'c-mode-common-hook 'my-c-mode)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-hook 'ac-settings-4-c)
(add-hook 'c++-mode-hook 'ac-settings-4-cpp)
;;(setq imenu-sort-function 'imenu--sort-by-name)

(defun my-c-mode()
  (interactive)
  (imenu-add-menubar-index)
  (which-func-mode t)
  (define-key ac-mode-map [(control tab)] 'auto-complete)
  (local-set-key (kbd "C-c . j") 'semantic-ia-fast-jump)
)

(defun ac-settings-4-c ()
  (setq ac-omni-completion-sources (list (cons "\\." '(ac-source-semantic))
                                         (cons "->" '(ac-source-semantic))))
  (setq ac-sources
        '(ac-source-semantic
          ac-source-yasnippet
          ac-source-abbrev
          ac-source-words-in-buffer
          ac-source-words-in-all-buffer
          ac-source-files-in-current-dir
          ac-source-filename)))

(defun ac-settings-4-cpp ()
  (setq ac-omni-completion-sources
        (list (cons "\\." '(ac-source-semantic))
              (cons "->" '(ac-source-semantic))))
  (setq ac-sources
        '(
          ac-source-semantic
          ac-source-yasnippet
          ac-source-abbrev
          ac-source-words-in-buffer
          ac-source-words-in-all-buffer
          ac-source-files-in-current-dir
          ac-source-filename)))

(add-hook 'c-mode-hook 'ac-settings-4-c)
(add-hook 'c++-mode-hook 'ac-settings-4-cpp)

;; 模式选择
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\nclass" . c++-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\ntemplate" . c++-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@implementation" . objc-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@interface" . objc-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@protocol" . objc-mode))


(provide 'init-cc)
