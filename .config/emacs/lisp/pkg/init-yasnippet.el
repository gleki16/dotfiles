(use-package yasnippet
  :hook (prog-mode . yas-minor-mode)
  :config (yas-reload-all))

(use-package yasnippet-snippets)

(provide 'init-yasnippet)
