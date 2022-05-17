;; 提升垃圾收集阈值，减少垃圾收集的频率来加快启动速度
(setq gc-cons-threshold most-positive-fixnum)

;; 降低垃圾收集阈值使垃圾收集暂停更快，减少卡顿
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (expt 2 23))))

;; 使用 UTF-8
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)

;; 显示相对行号
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; 启用鼠标
(xterm-mouse-mode 1)

;; 5 秒闲置，自动保存
(auto-save-visited-mode 1)

;; 简化是/否提示
(fset 'yes-or-no-p 'y-or-n-p)

;; 禁用菜单栏
(menu-bar-mode -1)

;; 禁用启动画面
(setq inhibit-splash-screen t)
(setq initial-scratch-message nil)

;; 禁用光标闪烁
(setq visible-cursor nil)

;; 禁用备份文件和锁定文件
(setq auto-save-default nil
      make-backup-files nil
      create-lockfiles nil)

(when (display-graphic-p)
  (scroll-bar-mode -1)
  (tool-bar-mode -1))

(provide 'init-option)
