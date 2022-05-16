(use-package yasnippet
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode))

(use-package yasnippet-snippets)

(provide 'init-yasnippet)
