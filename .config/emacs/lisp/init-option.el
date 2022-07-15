;;;; init-option.el --- 默认选项
;;; Commentary:

;; 提升垃圾收集阈值，减少垃圾收集的频率来加快启动速度
(setq gc-cons-threshold most-positive-fixnum)

;; 启动后，降低垃圾收集阈值使垃圾收集暂停更快，减少卡顿
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 16 1024 1024))))

;;; 函数选项

;; 使用 UTF-8
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

(global-display-line-numbers-mode 1)    ; 显示行号
(setq display-line-numbers-type 'relative) ;显示相对行号
(global-hl-line-mode t)                 ; 突出显示当前行
(xterm-mouse-mode 1)                    ; 启用鼠标
(auto-save-visited-mode 1)              ; 5 秒闲置，自动保存
(fset 'yes-or-no-p 'y-or-n-p)           ; 在询问是或否时使用简短的回答
(menu-bar-mode -1)                      ; 禁用菜单栏

;;; 设置默认值

(setq-default
 ring-bell-function 'ignore             ; 禁用响铃
 truncate-lines t                       ; 取消自动折行
 inhibit-splash-screen t                ; 禁用启动画面
 initial-scratch-message nil            ; 禁用暂存讯息
 indent-tabs-mode nil                   ; 使用空格代替制表符
 visible-cursor nil                     ; 禁用光标闪烁
 eldoc-echo-area-use-multiline-p nil    ; 不要显示多行 eldoc
 mouse-yank-at-point t                  ; 鼠标粘贴在光标处
 auto-save-default nil                  ; 禁用保存访问
 make-backup-files nil                  ; 禁用备份文件
 create-lockfiles nil)                  ; 禁用锁定文件

;;; 钩子

;; 括号自动配对
(add-hook 'prog-mode-hook 'electric-pair-local-mode)
(add-hook 'conf-mode-hook 'electric-pair-local-mode)

;; 删除尾随空格
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;; 图形界面

(when (display-graphic-p)
  (require 'init-graphic))

(provide 'init-option)
;;; init-option.el ends here
