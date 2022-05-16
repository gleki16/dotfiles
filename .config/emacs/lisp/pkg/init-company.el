(use-package company
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 2)
  (company-show-quick-access t)
  :config
  (company-tng-configure-default t)
  (global-company-mode 1))

(use-package company-fuzzy
  :hook (company-mode . company-fuzzy-mode)
  :custom
  (company-fuzzy-sorting-backend 'flx)
  (company-fuzzy-prefix-on-top nil)
  (company-fuzzy-history-backends '(company-yasnippet))
  (company-fuzzy-trigger-symbols '("." "->" "<" "\"" "'" "@"))
  :config
  (global-company-fuzzy-mode 1))

(provide 'init-company)
