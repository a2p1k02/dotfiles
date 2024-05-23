(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq package-selected-packages '(lsp-mode yasnippet lsp-treemacs projectile hydra flycheck company rust-mode avy ivy which-key catppuccin-theme dap-mode neotree all-the-icons dashboard powerline page-break-lines slime))

(when (cl-find-if-not #'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (mapc #'package-install package-selected-packages))

(which-key-mode)
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)

(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup '(slime-fancy slime-quicklisp slime-asdf))

(setq gc-cons-threshold (* 100 1024 1024)
      read-process-output-max (* 1024 1024)
      treemacs-space-between-root-nodes nil
      company-idle-delay 0.0
      company-minimum-prefix-length 1
      lsp-idle-delay 0.1)  ;; clangd is fast

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (require 'dap-cpptools)
  (yas-global-mode))


(use-package rust-mode
  :ensure t
  :mode ("\\.rs\\'" . rust-mode)
  :interpreter ("rust-mode" . rust-mode))

(add-to-list 'load-path "/directory/containing/neotree/")
(require 'neotree)

(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(setq neo-theme (if (display-graphic-p) 'icons 'all-the-icons))

(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default c++-basic-offset 4)

(global-display-line-numbers-mode t)
(setq auto-save-default nil)
(setq make-backup-files nil)

(dashboard-setup-startup-hook)

(load-theme 'catppuccin :no-confirm)
(setq catppuccin-flavor 'macchiato) ;; 'frappe, 'latte, 'macchiato, or 'mocha

(defun dashboard-line-generator (list-size)
  (insert ""))
 
(add-to-list 'dashboard-item-generators '(line . dashboard-line-generator))
 
(setq dashboard-items '((line)
            (projects . 5)
            (line)
            (recents . 5)
            (line)
            (bookmarks . 5)))

(setq dashboard-set-navigator t)

;; Format: "(icon title help action face prefix suffix)"
;;(setq dashboard-navigator-buttons
;;      `(;; line1
;;        ((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
;;         "Homepage"
;;         "Browse homepage"
;;         (lambda (&rest _) (browse-url "https://github.com/a2p1k02"))))))

(setq dashboard-set-init-info t)

(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

(setq dashboard-startup-banner "~/.emacs.d/logo.txt")

;; Content is not centered by default. To center, set
;;(setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
(setq dashboard-show-shortcuts nil)

(ivy-mode)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

(projectile-mode +1)
(setq visible-bell t)
(powerline-default-theme)

(add-to-list 'load-path "~/.emacs.d/elpa/autopair-20160304.1237/") ;; comment if autopair.el is in standard load path 
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono NL" :foundry "JB" :slant normal :weight normal :height 120 :width normal)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(package-selected-packages
   '(slime lsp-mode yasnippet lsp-treemacs projectile hydra flycheck company avy ivy which-key dap-mode neotree all-the-icons dashboard powerline page-break-lines evil)))

