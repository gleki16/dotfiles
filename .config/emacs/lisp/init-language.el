;;;; init-language.el --- 语言
;;; Commentary:

(require 'init-go-translate)            ; 语言翻译
(require 'init-eglot)                   ; 语言客户端
(require 'init-flymake)                 ; 语法检查
(require 'init-org)                     ; org 模式
(require 'init-quickrun)                ; 快速执行缓冲区
;; (require 'init-tree-sitter)             ; 语法树
;; (require 'init-yasnippet)               ; 代码片段 (加载太慢了，也没多大用，干脆不用了)

;; 语言包
(use-package markdown-mode)
(use-package lua-mode)

(provide 'init-language)
;;; init-language.el ends here
