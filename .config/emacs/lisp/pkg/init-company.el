(use-package company
  :hook (after-init . global-company-mode)
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 2)

  ;; 用 Meta + 数字，快速选择候选
  (company-show-quick-access t)

  ;; 注释右侧对齐
  (company-tooltip-align-annotations t)

  ;; 后端列表
  (company-backends '((;; completion-at-point-functions
		       company-capf
		       company-dabbrev-code
		       company-files
		       company-keywords
		       company-semantic
		       company-yasnippet))))

(provide 'init-company)
