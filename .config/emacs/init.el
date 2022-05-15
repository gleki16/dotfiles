;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; 设定源码加载路径 

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/pkg" user-emacs-directory))
(setq custom-file (locate-user-emacs-file "custom.el"))

;; Bootstrap config

(require 'init-version)
(require 'init-option)
(require 'init-package)
(require 'init-theme)
(require 'init-modal-edit)
(require 'init-completion)
(require 'init-lang)


(provide 'init)
;;; init.el ends here
