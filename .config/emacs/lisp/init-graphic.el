;;;; init-graphic.el --- 图形环境
;;; Commentary:

(blink-cursor-mode -1)                  ; 禁用光标闪烁
(scroll-bar-mode -1)                    ; 禁用滚动条
(tool-bar-mode -1)                      ; 禁用工具栏

(add-to-list 'default-frame-alist '(font . "Ubuntu Mono-16"))

(provide 'init-graphic)
;;; init-graphic.el ends here
