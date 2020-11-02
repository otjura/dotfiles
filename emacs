;; Happy GNU Emacs 27 ;;
;; self-docs: (describe-mode) (describe-key) (describe-function)

;; Enable MELPA Package Repository
(require 'package)
(add-to-list 'package-archives
						 '("melpa-stable" . "http://stable.melpa.org/packages/")
						 t)
(package-initialize)

;; General Usability Tweaks
(setq-default buffer-file-coding-system 'utf-8-unix)
(setq-default fill-column 80)
(fset 'yes-or-no-p 'y-or-n-p)
(column-number-mode 1)
(line-number-mode 1)
(size-indication-mode 1)
(tool-bar-mode -1)
(blink-cursor-mode 1)
(show-paren-mode 1)
(size-indication-mode -1)
(setq blink-cursor-blinks 0)
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
(setq scroll-preserve-screen-position 1)
(setq read-file-name-completion-ignore-case t)
(setq default-directory "C:/Users/Otso/")

;; Global Custom Keybinds
(global-set-key [f1] 'menu-bar-open)
(global-set-key [f2] 'kmacro-call-macro); F3=rec F4=endrec
(global-set-key [f9] 'other-window) ; C-x o
(global-set-key [f10] 'previous-buffer) ; C-x C-left
(global-set-key [f11] 'next-buffer) ; C-x C-right
(global-set-key [f12] 'electric-buffer-list)
(global-set-key (kbd "C-c q") 'query-replace)
(global-set-key (kbd "C-c r") 'replace-string)
(global-set-key (kbd "C-c g") 'goto-line)
(global-set-key (kbd "C-<tab>") 'indent-region)
(global-set-key (kbd "C-x r p") 'bookmark-delete)
(global-set-key (kbd "C-c k") 'kill-this-buffer)
(global-set-key (kbd "C-c s") 'search-forward)

(defun scandi-be-gone ()
	(local-set-key (kbd "å") (kbd "`"))
	(local-set-key (kbd "ö") (kbd "("))
	(local-set-key (kbd "ä") (kbd ")"))
	(local-set-key (kbd "Ö") (kbd "["))
	(local-set-key (kbd "Ä") (kbd "]")))

;; Text Mode
(defun comfy-text ()
	(local-set-key (kbd "C-c <deletechar>") 'kill-paragraph))
(add-hook 'text-mode-hook 'comfy-text)
(add-hook 'text-mode-hook 'visual-line-mode)

;; Common Lisp
(defun comfy-lisp ()
	(scandi-be-gone)
	(local-set-key [f8] 'slime-close-all-parens-in-sexp)
	(local-set-key [f5] 'slime-eval-buffer))
(add-hook 'lisp-mode-hook 'comfy-lisp)
(add-hook 'common-lisp-mode-hook 'comfy-lisp)
(add-hook 'slime-mode-hook 'comfy-lisp)
(add-hook 'slime-repl-mode-hook 'comfy-lisp)
(setq inferior-lisp-program "C:/SBCL/sbcl.exe")
(setq slime-contribs '(slime-fancy))
(setq common-lisp-hyperspec-root (expand-file-name "~/.slime/HyperSpec/"))

;; Emacs Lisp
(defun comfy-emli ()
	(scandi-be-gone)
	(local-set-key [f5] 'eval-buffer))
(add-hook 'emacs-lisp-mode-hook 'comfy-emli)

;; Scheme
(defun comfy-scheme ()
	(scandi-be-gone))
(add-hook 'scheme-mode-hook 'comfy-scheme)

;; Clojure
(defun comfy-clojure ()
	(scandi-be-gone))
(add-hook 'clojure-mode-hook 'comfy-clojure)
(add-hook 'cider-mode-hook 'comfy-clojure)
(add-hook 'cider-repl-mode-hook 'comfy-clojure)

;; Java
(defun comfy-java ()
	(scandi-be-gone)
	(subword-mode 1))
(add-hook 'java-mode-hook 'comfy-java)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GENERATED SETTINGS BEGIN HERE
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
	 [default default default italic underline success warning error])
 '(ansi-color-names-vector
	 ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(cursor-type (quote bar))
 '(custom-enabled-themes (quote (wombat)))
 '(fci-rule-color "#383838")
 '(frame-resize-pixelwise t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(package-selected-packages
	 (quote
		(markdown-mode typescript-mode paredit aggressive-indent cider geiser jedi haskell-mode github-clone gitconfig-mode github-browse-file git auto-complete clojure-mode cyberpunk-theme slime)))
 '(ring-bell-function (quote ignore))
 '(tab-always-indent (quote complete))
 '(tab-width 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "deep pink"))))
 '(show-paren-match ((t (:underline "lime green"))))
 '(show-paren-mismatch ((t (:underline "firebrick1")))))
(setq load-home-init-file t) ; don't load init file from ~/.xemacs/init.el
(put 'downcase-region 'disabled nil)
