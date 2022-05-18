;; 提升垃圾收集阈值，减少垃圾收集的频率来加快启动速度
(setq gc-cons-threshold most-positive-fixnum)

;; 启动后，降低垃圾收集阈值使垃圾收集暂停更快，减少卡顿
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 16 1024 1024))))

;; 使用 UTF-8
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

;; 显示相对行号
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; 突出显示当前行
(global-hl-line-mode t)

;; 启用鼠标
(xterm-mouse-mode 1)

;; 5 秒闲置，自动保存
(auto-save-visited-mode 1)

;; 在询问是或否时使用简短的回答
(fset 'yes-or-no-p 'y-or-n-p)

;; 禁用菜单栏
(menu-bar-mode -1)

;; 设置默认值
(setq-default

 ;; 禁用响铃
 ring-bell-function 'ignore

 ;; 取消自动折行
 truncate-lines t

 ;; 禁用启动画面
 inhibit-splash-screen t
 initial-scratch-message nil

 ;; 禁用光标闪烁
 visible-cursor nil

 ;; 禁用备份文件和锁定文件
 auto-save-default nil
 make-backup-files nil
 create-lockfiles nil)

;; 括号自动配对
(add-hook 'prog-mode-hook 'electric-pair-local-mode)
(add-hook 'conf-mode-hook 'electric-pair-local-mode)

;; 删除尾随空格
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; 图形界面：
;; 禁用：光标闪烁，滚动条，工具栏
(when (display-graphic-p)
  (blink-cursor-mode -1)
  (scroll-bar-mode -1)
  (tool-bar-mode -1))

(provide 'init-option)
