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
(require 'packages)

;;; init.el ends here
