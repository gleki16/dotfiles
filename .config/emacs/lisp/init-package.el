;;;; init-package.el --- 包管理器
;;; Commentary:

;; 添加软件源
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(unless (bound-and-true-p package--initialized)
  (package-initialize))

;; 安装 use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t
      use-package-expand-minimally t
      use-package-compute-statistics t
      use-package-enable-imenu-support t)

(require 'use-package)

(provide 'init-package)
;;; init-package.el ends here
