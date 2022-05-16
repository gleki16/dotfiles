(use-package company
  :hook (after-init . global-company-mode)
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 2)
  (company-show-quick-access t)
  (company-require-match nil)
  (company-tooltip-align-annotations t)
  :config
  (company-tng-configure-default t))

(use-package company-fuzzy
  :hook (company-mode . company-fuzzy-mode)
  :custom
  (company-fuzzy-sorting-backend 'flx)
  (company-fuzzy-prefix-on-top nil)
  (company-fuzzy-trigger-symbols '("." "->" "<" "\"" "'" "@"))
  :config
  (add-to-list 'company-fuzzy-history-backends 'company-yasnippet))

(provide 'init-company)
