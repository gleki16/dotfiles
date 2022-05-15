;;; init-options.el --- 设置选项  -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Feature Mode

(fset 'yes-or-no-p 'y-or-n-p)
(setq visible-cursor nil)

;; File Operation

(setq inhibit-splash-screen t
      initial-scratch-message nil
      sentence-end-double-space nil
      make-backup-files nil
      auto-save-default nil
      create-lockfiles nil)

;; Performance

(if (not (display-graphic-p))
    (progn
      ;; 增大垃圾回收的阈值，提高整体性能（内存换效率）
      (setq gc-cons-threshold (* 8192 8192))
      ;; 增大同LSP服务器交互时的读取文件的大小
      (setq read-process-output-max (* 1024 1024 128)) ;; 128MB
      ))

;; Titlebar

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(let ((display-table (or standard-display-table (make-display-table))))
  (set-display-table-slot display-table 'vertical-border (make-glyph-code ?│)) ; or ┃ │
  (setq standard-display-table display-table))
(set-face-background 'vertical-border (face-background 'default))
(set-face-foreground 'vertical-border "grey")


(provide 'init-option)
;;; init-options.el ends here
