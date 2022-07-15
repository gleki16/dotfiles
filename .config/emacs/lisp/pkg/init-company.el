(use-package company
  :hook (after-init . global-company-mode)
  :custom
  (company-idle-delay 0)                ; 立即显示补全
  (company-minimum-prefix-length 2)     ; 输入 2 个字符后显示建议
  (company-show-quick-access t)         ; 用 Meta + 数字，快速选择候选
  (company-tooltip-align-annotations t) ; 注释右侧对齐
  ;; 后端列表：capf 和 代码片段
  (company-backends '((company-capf :with company-yasnippet))))

(provide 'init-company)
