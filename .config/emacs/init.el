;;;; init.el --- emacs 初始化 -*- lexical-binding: t -*-
;;; Commentary:
;; 加载所有功能配置

;; 设定源码加载路径
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/pkg" user-emacs-directory))
;; 自定义信息文件位置
(setq custom-file (locate-user-emacs-file "custom.el"))

;; 加载配置
(require 'init-version)                 ; 检查版本
(require 'init-option)                  ; 默认选项
(require 'init-package)                 ; 包管理器
(require 'init-theme)                   ; 主题
(require 'init-keymap)                  ; 按键映射
(require 'init-completion)              ; 补全
(require 'init-language)                ; 语言

(provide 'init)
;;; init.el ends here
