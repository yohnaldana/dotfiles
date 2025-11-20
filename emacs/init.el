;;; init.el by Yohnathan Aldana
;;; Main configuration entry point
;;  Each module lives under ~/.emacs.d/lisp/

;;; Code:

;; Add 'lisp' directory to load path
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Init package system
(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
	("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Install use-package if missing
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; Load modules
(require 'ui)
(require 'editing)
(require 'keybinds)
(require 'org-config)
;; (require 'packages)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("17570f818a8a3877994453342e3425a3b4fa4b3ebac050b4ecbbee958f1ca133" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
