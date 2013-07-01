(require 'cedet)
(require 'semantic)
(require 'semantic/ia)
(require 'semantic/bovine/gcc)

(semantic-add-system-include "/usr/include/c++/4.6.3" 'c++-mode)
(setq semantic-default-submodes
      '(global-semantic-idle-scheduler-mode
        global-semanticdb-minor-mode
        global-semantic-idle-summary-mode
        global-semantic-idle-completions-mode
        global-semantic-highlight-func-mode
        global-semantic-decoration-mode
        global-semantic-mru-bookmark-mode))
(semantic-mode t)
(global-ede-mode t)

(provide 'init-cedet)
