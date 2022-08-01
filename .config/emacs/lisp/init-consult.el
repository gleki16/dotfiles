(use-package consult
  :bind
  ([remap switch-to-buffer] . consult-buffer)
  (:map mode-specific-map
              ("q" . consult-ripgrep)))

(provide 'init-consult)
