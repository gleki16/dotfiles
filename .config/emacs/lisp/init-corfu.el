(use-package corfu
  :custom
  (corfu-auto t)                        ; 启用自动补全
  (corfu-auto-delay 0)                  ; 立即显示补全
  (corfu-auto-prefix 2)                 ; 输入 2 个字符后显示补全
  :config (global-corfu-mode 1))

(unless (display-graphic-p)             ; 在非图形环境使用 corfu
  (use-package corfu-terminal
    :config (corfu-terminal-mode 1)))

(provide 'init-corfu)
