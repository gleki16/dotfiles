;;;; init-version.el --- 检查版本
;;; Commentary:

(let ((minver "27.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))

(provide 'init-version)
;;; init-version.el ends here
