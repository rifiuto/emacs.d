;;; package --- Summary
;;; Commentary:
;;; Code:
(use-package markdown-mode
  :config
  (add-hook 'markdown-mode-hook
            (lambda ()
              (when buffer-file-name
                (add-hook 'after-save-hook
                          'check-parens
                          nil t))))
  (add-hook 'markdown-mode-hook (lambda () (modify-syntax-entry ?\" "\"" markdown-mode-syntax-table)))
  (add-hook 'markdown-mode-hook 'visual-line-mode)
  (add-hook 'markdown-mode-hook 'display-line-numbers-mode)
  )
(provide 'mymarkdown)
;;; mymarkdown.el ends here
