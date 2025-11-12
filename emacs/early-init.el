;;; early-init.el --- Early optimizations -*- lexical-binding: t; -*-
(setq package-enable-at-startup nil)
(setq gc-cons-threshold (* 50 1000 1000))
(setq read-process-output-max (* 1024 1024))
;;; early-init.el ends here
