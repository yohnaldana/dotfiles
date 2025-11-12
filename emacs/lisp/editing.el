;;; editing.el --- Editing behavior -*- lexical-binding: t; -*-

(setq-default
 indent-tabs-mode nil
 tab-width 2
 fill-column 80
 cursor-type '(bar . 2))

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(show-paren-mode 1)
(delete-selection-mode 1)
(global-auto-revert-mode 1)

;; Clipboard integration
(setq select-enable-clipboard t)

(provide 'editing)
;;; editing.el ends here
