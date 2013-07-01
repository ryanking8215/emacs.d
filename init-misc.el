;;----------------------------------------------------------------------------
;; Misc config - yet to be placed in separate files
;;----------------------------------------------------------------------------
(add-auto-mode 'tcl-mode "Portfile\\'")
(fset 'yes-or-no-p 'y-or-n-p)

(dolist (hook (if (fboundp 'prog-mode)
                  '(prog-mode-hook ruby-mode-hook)
                '(find-file-hooks)))
  (add-hook hook 'goto-address-prog-mode))
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)
(setq goto-address-mail-face 'link)

(setq-default regex-tool-backend 'perl)

(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time-mode t);显示时间
(setq x-select-enable-clipboard t);支持emacs和外部程序的粘贴
(setq default-fill-column 80);默认显示 80列就换行
(global-linum-mode t)

;;; my global keymap
(global-set-key [f2] 'eshell);
;; (global-set-key [f5] 'gdb);F5调试程序
;; (setq compile-command "make -f Makefile")
(global-set-key [f5] 'compile);F5编译文件
(global-set-key [f7] 'shell-command);shell commond in minibuf
(global-set-key [f8] 'other-window);F8窗口间跳转
(global-set-key [C-return] 'ido-kill-buffer);C-return关闭当前buffer
;; (global-set-key [f9] 'sr-speedbar-toggle)
;; (global-set-key [f10] 'split-window-vertically);F10分割窗口
;; (global-set-key [f11] 'delete-other-windows);F11 关闭其它窗口
;; (global-set-key [f12] 'my-fullscreen);F12 全屏
(global-set-key (kbd "C-,") 'backward-page);文件首
(global-set-key (kbd "C-.") 'forward-page);文件尾
(global-set-key (kbd "M-[") 'find-tag)
(global-set-key (kbd "M-]") 'pop-tag-mark)
(global-set-key (kbd "C-c m") 'magit-status)

(provide 'init-misc)
