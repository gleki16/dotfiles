(use-package selectrum
  :config (selectrum-mode 1))

(use-package selectrum-prescient
  :config
  (selectrum-prescient-mode 1)          ; 让排序和过滤更智能
  (prescient-persist-mode 1))           ; 历史记录排序

(provide 'init-selectrum)
