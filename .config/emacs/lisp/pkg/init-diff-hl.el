(use-package diff-hl
  :hook
  (dired-mode . diff-hl-dired-mode)
  (prog-mode . diff-hl-mode)
  (conf-mode . diff-hl-mode))

(provide 'init-diff-hl)
