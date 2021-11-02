;; eaf
(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")
(require 'eaf)
(require 'eaf-pdf-viewer)
(require 'eaf-terminal)
(require 'eaf-demo)
(require 'eaf-vue-demo)
(require 'eaf-markdown-previewer)
(require 'eaf-jupyter)
(require 'eaf-file-browser)
(require 'eaf-image-viewer)
(require 'eaf-camera)
(require 'eaf-system-monitor)
(require 'eaf-video-player)
(require 'eaf-file-sender)
(require 'eaf-netease-cloud-music)
(require 'eaf-music-player)
(require 'eaf-org-previewer)
(require 'eaf-mindmap)
(require 'eaf-airshare)
(require 'eaf-file-manager)
(require 'eaf-browser)
(require 'eaf-rss-reader)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package kaolin-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'myeaf)
