;;; package --- Summary
;;; Commentary:
;;; Code:
(require 'org)
(add-hook 'org-mode-hook #'turn-on-org-cdlatex)

(add-hook 'org-mode-hook 'linum-mode)

(provide 'myorg)
;;; myorg.el ends here
