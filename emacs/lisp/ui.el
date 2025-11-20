;;; ui.el --- UI configuration -*- lexical-binding: t; -*-

;; Basic appearance
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(setq ring-bell-function 'ignore)
(setq visible-bell nil)

;; Font
;; (set-face-attribute 'default nil :font "JetBrains Mono" :height 120)

;; Theme, set theme here
;; Load standard-themes package and pick a theme
(use-package standard-themes
  :ensure t
  :init
  ;; Enable the mode where Standard Themes “take over” Modus commands (optional)
  (standard-themes-take-over-modus-themes-mode 1)
  :config
  ;; Customisation variables (many alias to modus-themes options)
  (setq modus-themes-italic-constructs t
        modus-themes-bold-constructs nil
        modus-themes-mixed-fonts t)
  ;; Finally, load your preferred theme variant:
  (load-theme 'standard-light t))

(provide 'ui)
;;; ui.el ends here
