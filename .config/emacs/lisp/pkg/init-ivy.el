(use-package ivy
  :bind
  ("C-x C-b" . 'ivy-switch-buffer))

(use-package counsel
  :bind
  ("M-x" . 'counsel-M-x)
  ("C-x C-f" . 'counsel-fzf))

;; 使用模糊搜索
(setq ivy-re-builders-alist '((t . ivy--regex-fuzzy))
      ivy-initial-inputs-alist nil)

(provide 'init-ivy)
