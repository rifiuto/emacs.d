(require 'use-package-ensure)
(setq use-package-always-ensure t)

(package-initialize)
(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
;; 添加额外的路径
;; refuse to blink when input error info
(setq inhibit-startup-screen t)
(setq ring-bell-function #'ignore)
;;
(setq load-prefer-newer t)

(if (display-graphic-p)
    (setq initial-frame-alist
          '((tool-bar-lines . 0)
            (fullscreen . maximized)))
  (setq initial-frame-alist '((tool-bar-lines . 0))))
;; highlight brackets
(setq default-frame-alist
      '((tool-bar-lines . 0)
        (fullscreen . maximized)))
(setq-default frame-title-format '("sayno"))
(column-number-mode 1)
;;;;;package-refresh-contents;
;; backup and file related
;; whether generate the file~package-refresh-contents
(setq make-backup-files nil)
(setq backup-by-copying t)
(setq create-lockfiles nil)
(setq auto-save-default t)
(setq-default indent-tabs-mode t)
;; 4 is more popular than 8.
(setq-default tab-width 4)
;; about the cursor
(setq-default cursor-type 'bar)
;; blink the cursor
(blink-cursor-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (set-frame-font "DejaVu Sans Mono-12" t t)
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-11"))
;; set Enter to function 'newline-and-indent, it is useful.
;; (define-key global-map (kbd "RET" ) 'newline-and-indent)
(set-default 'tab-always-indent 'complete)
;; no mixed tab space
(defalias 'yes-or-no-p 'y-or-n-p)

;;
(scroll-bar-mode -1)
(tool-bar-mode -1)
;; menu-bar-mode is useful
(menu-bar-mode 1)

;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)

;; add "open recent" in your "File" in your menu.
(require 'recentf)
(recentf-mode 1)

;; highlight the paren
(show-paren-mode 1)
;; delete in pair
(electric-pair-mode 1)
(global-auto-revert-mode 1)


;; package
(use-package kaolin-themes
  :config
  (load-theme 'kaolin-mono-light t))
;; about the input method

;; add extra load path
(add-to-list 'load-path "~/.emacs.d/etc/")
(require 'myeaf)
(require 'myelisp)
(require 'mymagit)
(require 'mymarkdown)
(require 'myorg)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(markdown-mode magit use-package kaolin-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
