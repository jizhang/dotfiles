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
(global-linum-mode 1)

(use-package neotree
  :ensure t)
