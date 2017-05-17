;; Happy GNU Emacs 25 ;;
;; for Windows http://emacsbinw64.sourceforge.net/ and this guide: https://archive.is/6LriZ
;; self-docs: (describe-mode) (describe-key) (describe-function)

;; Enable MELPA Package Repository melpa.org
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version)
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; General Usability Tweaks
;(setq gc-cons-threshold 10000000)
(setq-default buffer-file-coding-system 'utf-8-unix)
(setq-default fill-column 100)
(desktop-save-mode 1)
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
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(setq tab-always-indent 'complete)
(setq scroll-preserve-screen-position 1)
(setq indent-tabs-mode nil)
(setq read-file-name-completion-ignore-case t)
(setq tab-width 2)
 
;; Global Custom Keybinds
(global-set-key [f2] 'kmacro-call-macro); F3=rec F4=endrec F2=run
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
  (local-set-key (kbd "¨") (kbd "~"))
  (local-set-key (kbd "§") (kbd "`"))
  (local-set-key (kbd "å") (kbd "`"))
  (local-set-key (kbd "ö") (kbd "("))
  (local-set-key (kbd "ä") (kbd ")"))
  (local-set-key (kbd "Ö") (kbd "["))
  (local-set-key (kbd "Ä") (kbd "]"))
  (local-set-key (kbd "ø") (kbd "{"))
  (local-set-key (kbd "æ") (kbd "}")))

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
(setq inferior-lisp-program "/bin/sbcl")
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

;; C, C++, Java, Python, Ruby, JavaScript, TypeScript
(defun comfy-cee ()
  (scandi-be-gone)
  (subword-mode 1))
(add-hook 'c-mode-hook 'comfy-cee)
(add-hook 'c++-mode-hook 'comfy-cee)
(add-hook 'java-mode-hook 'comfy-cee)
(add-hook 'python-mode-hook 'comfy-cee)
(add-hook 'ruby-mode-hook 'comfy-cee)
(add-hook 'js-mode-hook 'comfy-cee)
(add-hook 'typescript-mode-hook 'comfy-cee)
(setq python-indent-offset 4)
 
;; Matlab, Octave
(add-to-list 'auto-mode-alist '("\\.m\\'" . octave-mode))
     
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
 '(ring-bell-function (quote ignore)))
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
