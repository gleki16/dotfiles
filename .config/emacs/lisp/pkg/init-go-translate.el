(use-package go-translate
  :bind (:map mode-specific-map
               ("t" . gts-do-translate))
  :custom

  ;; 翻译语言对
  (gts-translate-list '(("en" "zh")))

  :config
  (setq gts-default-translator
        (gts-translator

         ;; 用于拾取初始文本
         :picker (gts-noprompt-picker)

         ;; 翻译引擎
         :engines (list
                   (gts-bing-engine)
                   (gts-google-engine))

         ;; 渲染器，用于输出结果到指定目标
         :render (gts-buffer-render))))

(provide 'init-go-translate)
