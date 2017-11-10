;; packages used in this config --------
;; plugins installed by package:
;; helm
;; company 
;; highlight-symbol
;; nlumn-hl
;; xquery-mode
;; web-mode
;; helm-git-grep
;; js2-mode


(require 'package)
(package-initialize)

(require 'helm-config)

(require 'nlinum-hl)

;; helm setting
(global-set-key (quote [f12]) 'helm-mini)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

;; highlight symbol
(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

;; xquery 
(require 'xquery-mode)
(autoload 'xquery-mode "xquery-mode" "XQuery mode" t )
(add-to-list 'auto-mode-alist '("\\.xq\\'" . xquery-mode))
(setq-default xquery-indent-size 4)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; js2-mode
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js?\\'" . js2-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(global-company-mode t)
 '(global-nlinum-mode t)
 '(helm-mode t)
 '(menu-bar-mode t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode t)
 '(tool-bar-position (quote top))
 '(tooltip-mode nil)
 '(url-proxy-services
   (quote
    (("http" . "proxy.inet.bloomberg.com:77")
     ("https" . "proxy.inet.bloomberg.com:77")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
