;; emacs configuration
;; started from http://www.viget.com/extend/emacs-24-rails-development-environment-from-scratch-to-productive-in-5-minu/
(push "/usr/local/bin" exec-path)

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(setq make-backup-files nil)
(setq auto-save-default nil)
;; http://www.emacswiki.org/emacs/AlarmBell
(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq markdown-command "/usr/local/bin/markdown")

(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(blink-cursor-mode t)
(show-paren-mode t)
(column-number-mode t)

(set-frame-font "Menlo-12")
(load-theme 'tango-dark)

(if (window-system) (set-frame-size (selected-frame) 124 45))

;; M-x package-refresh-contents to update available packages
(require 'package)
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)
(setq el-get-sources
      '(el-get
        markdown-mode))
(el-get 'sync)

(add-to-list 'load-path "~/.emacs.d/erlang")
(require 'erlang-start)
