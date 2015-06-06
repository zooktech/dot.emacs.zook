(require 'package)

(add-to-list 'package-archives
	     ;; '("melpa" . "http://melpa.org/packages/")
	     '("melpa-stable" . "http://stable.melpa.org/packages/")
	     t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

(load-theme 'tango-dark t)
;;(load-theme 'cyberpunk t)

;; Hide top menu bar
(menu-bar-mode -1)

;; Enable two finger scrolling in console:
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] '(lambda ()
			       (interactive)
			       (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
			       (interactive)
			       (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
  )

(global-set-key (kbd "M-/") 'hippie-expand)

(require 'undo-tree)
(global-undo-tree-mode)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(add-to-list 'load-path "~/.emacs.d/custom")

(load "osx.el")
(load "editing.el")
(load "elisp-editing.el")
(load "clojure.el")
(load "misc.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b9e72874e3180f42d4ecdee8b5ecbf67fe5e922747ca50c8b9ca5960988c6277" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
