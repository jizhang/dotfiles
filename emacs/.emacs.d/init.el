;; package management
(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; custom
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file t)

;; basics
(use-package linum
  :init
  (setq linum-format "%d ")
  :config
  (global-linum-mode t))

(use-package neotree
  :ensure t)
