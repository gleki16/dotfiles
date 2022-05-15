(use-package company
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 2)
  (company-show-quick-access t)
  :config
  (global-company-mode))

(provide 'init-company)
