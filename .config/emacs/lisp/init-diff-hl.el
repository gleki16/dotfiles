(use-package diff-hl
  :hook (dired-mode . diff-hl-dired-mode)
  :config
  (global-diff-hl-mode)
  (unless (display-graphic-p)
    (diff-hl-margin-mode)))

(provide 'init-diff-hl)
