(use-package ivy
  :init (use-package counsel)
  :bind
  ("M-x" . 'counsel-M-x)
  ("C-x C-f" . 'counsel-fzf)
  ("C-x C-b" . 'ivy-switch-buffer)
  :custom
  (ivy-initial-inputs-alist nil)
  (ivy-re-builders-alist '((t . ivy--regex-fuzzy))))

(provide 'init-ivy)
