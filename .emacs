
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

(load-file "~/emacs.d/sr-speedbar.el")
(require 'sr-speedbar)


(load-file "~/emacs.d/imenu-anywhere.el")



(global-set-key (kbd "M-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "M-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-C-<down>") 'shrink-window)
(global-set-key (kbd "M-C-<up>") 'enlarge-window)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-inline-function 'insert-tab)


(add-to-list 'load-path "~/.emacs.d/elpa/helm-20171120.126")
(require 'helm-config)
(helm-mode 1)



(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-c o") 'helm-semantic-or-imenu)


(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(global-set-key (kbd "C-{") 'hs-hide-block)
(global-set-key (kbd "C-}") 'hs-show-block)
(global-set-key (kbd "C-<") 'hs-hide-all)
(global-set-key (kbd "C->") 'hs-show-all)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#bf616a" "#B4EB89" "#ebcb8b" "#89AAEB" "#C189EB" "#89EBCA" "#232830"))
 '(company-minimum-prefix-length 3)
 '(custom-safe-themes
   '("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "7f14fad67d7ac8d0555bd5a1fd1a429ce2dd37162c4e2dc7ae501f54bad1273a" "0e121ff9bef6937edad8dfcff7d88ac9219b5b4f1570fd1702e546a80dba0832" "f0a99f53cbf7b004ba0c1760aa14fd70f2eabafe4e62a2b3cf5cabae8203113b" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "bd115791a5ac6058164193164fd1245ac9dc97207783eae036f0bfc9ad9670e0" default))
 '(package-selected-packages
   '(ascii tablist s nhexl-mode json-mode helm go-mode go dash cyberpunk-theme))
 '(popwin:special-display-config
   '(("*Miniedit Help*" :noselect t)
     (help-mode)
     (completion-list-mode :noselect t)
     (compilation-mode :noselect t)
     (grep-mode :noselect t)
     (occur-mode :noselect t)
     ("*Pp Macroexpand Output*" :noselect t)
     ("*Shell Command Output*")
     ("*vc-diff*")
     ("*vc-change-log*")
     (" *undo-tree*" :width 60 :position right)
     ("^\\*anything.*\\*$" :regexp t)
     ("*slime-apropos*")
     ("*slime-macroexpansion*")
     ("*slime-description*")
     ("*slime-compilation*" :noselect t)
     ("*slime-xref*")
     (sldb-mode :stick t)
     (slime-repl-mode)
     (slime-connection-list-mode)
     ("helm" :regexp t)
     ("speedbar" :regexp t :noselect t)
     ("*SPEEDBAR*" :noselect t)))
 '(speedbar-default-position 'left)
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-skip-other-window-p t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#bf616a")
     (40 . "#DCA432")
     (60 . "#ebcb8b")
     (80 . "#B4EB89")
     (100 . "#89EBCA")
     (120 . "#89AAEB")
     (140 . "#C189EB")
     (160 . "#bf616a")
     (180 . "#DCA432")
     (200 . "#ebcb8b")
     (220 . "#B4EB89")
     (240 . "#89EBCA")
     (260 . "#89AAEB")
     (280 . "#C189EB")
     (300 . "#bf616a")
     (320 . "#DCA432")
     (340 . "#ebcb8b")
     (360 . "#B4EB89")))
 '(vc-annotate-very-old-color nil))


(add-to-list 'load-path "~/emacs.d/elpa/company-20141230.848")
(require 'company)
(global-company-mode t)


(electric-pair-mode 1)
(add-hook 'emacs-lisp-mode-hook 'turn-on-font-lock)

(add-hook 'c-mode-hook 'turn-on-font-lock)

(transient-mark-mode 1) ; highlight text selection
(delete-selection-mode 1) ; delete seleted text when typing


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(windmove-default-keybindings 'meta)

;; (global-set-key (kbd "C-c <left>")  'windmove-left)
;; (global-set-key (kbd "C-c <right>") 'windmove-right)
;; (global-set-key (kbd "C-c <up>")    'windmove-up)
;; (global-set-key (kbd "C-c <down>")  'windmove-down)


(defun ignore-error-wrapper (fn)
  "Funtion return new function that ignore errors.
   The function wraps a function with `ignore-errors' macro."
  (lexical-let ((fn fn))
    (lambda ()
      (interactive)
      (ignore-errors
        (funcall fn)))))

(load-file "~/emacs.d/window-number.el")
(require 'window-number)
(window-number-mode 1)

(require 'linum)
(global-linum-mode 1)


;;melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;;themes
(add-to-list 'custom-theme-load-path "~/emacs.d/themes")
(load-theme 'cyberpunk t)



(load-file "~/emacs.d/doc-mode.el")
(require 'doc-mode)
(add-hook 'java-mode-hook 'doc-mode)

(global-set-key (kbd "C-c l") 'goto-line)



;; (add-to-list 'load-path "~/emacs.d/yasnippet/yasnippet")
;; (require 'yasnippet)
;; (yas-global-mode 1)

;; (load-file "~/emacs.d/yasnippet-java-mode-master/java-snippets.el")



;; (define-key yas-minor-mode-map (kbd "<tab>") nil)
;; (define-key yas-minor-mode-map (kbd "TAB") nil)
;; (global-set-key (kbd "C-;") 'yas/expand)

(load-file "~/emacs.d/popwin.el")
(require 'popwin)
(popwin-mode 1)

;; (add-to-list 'load-path "~/.emacs.d/elpa/popup-20160709.729")
;; (require 'popup)
;; (popup-mode 1)


(global-set-key (kbd "C-z") popwin:keymap)


;; (add-to-list 'load-path "~/emacs.d/neotree/neotree")
;; (require 'neotree)

(add-to-list 'load-path "~/emacs.d/dirtree-master")
(byte-recompile-directory "~/emacs.d/dirtree-master" 0)
(autoload 'dirtree "dirtree" "~/workspace")
(require 'dirtree)

(put 'upcase-region 'disabled nil)
