(use-package selectrum
  :config (selectrum-mode 1))

(use-package selectrum-prescient
  :config

  ;; 让排序和过滤更智能
  (selectrum-prescient-mode 1)

  ;; 历史记录排序
  (prescient-persist-mode 1))

(provide 'init-selectrum)
