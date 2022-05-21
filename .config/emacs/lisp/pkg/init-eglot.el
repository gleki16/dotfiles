(use-package eglot
  :hook ((python-mode
          rust-mode) . eglot-ensure))

(provide 'init-eglot)
