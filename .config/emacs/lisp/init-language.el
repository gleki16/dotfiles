;; 语言翻译
(require 'init-go-translate)

;; 语法树
;; (require 'init-tree-sitter)

;; 语言客户端
(require 'init-eglot)

;; 语法检查
(require 'init-flymake)

;; 代码片段
;; 加载太慢了，也没多大用，干脆不用了
;; (require 'init-yasnippet)

;; org 模式
(require 'init-org)

;; 快速运行缓冲区
(require 'init-quickrun)

;; 语言包
(use-package markdown-mode)
(use-package lua-mode)

(provide 'init-language)
