;;; init-elpa.el --- Settings and helpers for package.el -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

;; Define and initialise package repositories

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(unless (bound-and-true-p package--initialized)
  (package-initialize))
;; use-package to simplify the config file

;; Install use-package if not available

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t
      use-package-compute-statistics t
      use-package-enable-imenu-support t
      use-package-expand-minimally t)

(require 'use-package)

(require 'init-auto-package-update)

(provide 'init-package)
;;; init-elpa.el ends here
