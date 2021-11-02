;;; package --- Summary
;;; Commentary:
;;; Code:
;; the basic configuration about the elisp
(use-package lispy
  :config
  (add-hook 'emacs-lisp-mode-hook '(lambda ()
									 (local-set-key (kbd "RET") 'newline-and-indent)))
  (add-hook 'emacs-lisp-mode-hook 'lispy-mode)
  (add-hook 'emacs-lisp-mode-hook 'menu-bar-mode)
  (add-hook 'emacs-lisp-mode-hook 'linum-mode))

(provide 'myelisp)
;;; myelisp.el ends here
