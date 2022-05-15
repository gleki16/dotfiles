(use-package undo-tree
  :custom
  (undo-tree-history-directory-alist '(("." . "~/.config/emacs/undo")))
  (undo-tree-visualizer-diff t)
  :config (global-undo-tree-mode))

(provide 'init-undo-tree)
