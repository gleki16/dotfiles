(use-package ivy
  :config (ivy-mode))

(use-package counsel
  :bind
  ("M-x" . 'counsel-M-x)
  ("C-x C-f" . 'counsel-find-file))

(provide 'init-ivy)
