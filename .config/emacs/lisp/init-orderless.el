(use-package orderless
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion))))
  :config
  (defun flex-if-twiddle (pattern _index _total)
    (when (string-suffix-p "~" pattern)
      `(orderless-flex . ,(substring pattern 0 -1))))

  (defun first-initialism (pattern index _total)
    (if (= index 0) 'orderless-initialism))

  (defun without-if-bang (pattern _index _total)
    (cond
     ((equal "!" pattern)
      '(orderless-literal . ""))
     ((string-prefix-p "!" pattern)
      `(orderless-without-literal . ,(substring pattern 1)))))

  (setq orderless-matching-styles '(orderless-regexp)
        orderless-style-dispatchers '(first-initialism
                                      flex-if-twiddle
                                      without-if-bang)))

(provide 'init-orderless)
