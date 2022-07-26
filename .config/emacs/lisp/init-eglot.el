(use-package eglot
  :hook ((python-mode
          sh-mode) . eglot-ensure))

(provide 'init-eglot)
