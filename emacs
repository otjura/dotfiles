;;;; Comfy Emacs 24.5 ;;;;

;; Reduce startup time
(setq gc-cons-threshold 100000000)

;; Save sessions
(desktop-save-mode 1)

;; MELPA Package Repository
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version)
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; General Usability Tweaks
(setq-default fill-column 80)
(fset 'yes-or-no-p 'y-or-n-p)
(column-number-mode 1)
(tool-bar-mode -1)
(setq blink-cursor-blinks 0)
(blink-cursor-mode 1)
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
(show-paren-mode 1)
;;(set-fill-column 80)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; Global Custom Keybinds
(global-set-key [f2] 'kmacro-call-macro);F2=run F3=record F4=end
(global-set-key [f9] 'other-window)
(global-set-key [f10] 'previous-buffer)
(global-set-key [f11] 'next-buffer)
(global-set-key [f12] 'electric-buffer-list)
(global-set-key (kbd "C-c q") 'query-replace)
(global-set-key (kbd "C-c r") 'replace-string)
(global-set-key (kbd "C-c g") 'goto-line)
(global-set-key (kbd "C-<tab>") 'indent-region)

;; Text Mode
(defun comfy-text ()
  (local-set-key (kbd "C-c <deletechar>") 'kill-paragraph))
(add-hook 'text-mode-hook 'comfy-text)
(add-hook 'text-mode-hook 'visual-line-mode)

;; Haskell
(defun comfy-haskell ()
  (local-set-key (kbd "å") (kbd "`"))
  (local-set-key (kbd "¨") (kbd "~"))
  (local-set-key (kbd "ö") (kbd "("))
  (local-set-key (kbd "ä") (kbd ")")))
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
(add-hook 'haskell-mode-hook 'comfy-haskell)

;; Common Lisp, Emacs Lisp, Scheme
(defun comfy-lisp ()
  (local-set-key [f8] 'slime-close-all-parens-in-sexp)
  (local-set-key [f5] 'slime-eval-buffer)
  (local-set-key (kbd "å") (kbd "`"))
  (local-set-key (kbd "¨") (kbd "~"))
  (local-set-key (kbd "ö") (kbd "("))
  (local-set-key (kbd "ä") (kbd ")")))
(add-hook 'lisp-mode-hook 'comfy-lisp)
(add-hook 'emacs-lisp-mode-hook 'comfy-lisp)
(add-hook 'common-lisp-mode-hook 'comfy-lisp)
(add-hook 'scheme-mode-hook 'comfy-lisp)
(add-hook 'slime-mode-hook 'comfy-lisp)
(add-hook 'slime-repl-mode-hook 'comfy-lisp)

;; Common Lisp implementation for SLIME - enable only one!
(setq inferior-lisp-program "C:/SBCL/sbcl.exe")
;;(setq inferior-lisp-program "C:/ECL/ecl.exe")
;;(setq inferior-lisp-program "/usr/bin/sbcl")
;;(setq inferior-lisp-program "usr/bin/ecl")
(setq slime-contribs '(slime-fancy))

;; C, C++, Java
(defun comfy-cee ()
  (capitalized-words-mode 1)
  (local-set-key (kbd "¨") (kbd "~"))
  (local-set-key (kbd "å") (kbd "`"))
  (local-set-key (kbd "ö") (kbd "("))
  (local-set-key (kbd "ä") (kbd ")")))
(add-hook 'c-mode-hook 'comfy-cee)
(add-hook 'c++-mode-hook 'comfy-cee)
(add-hook 'java-mode-hook 'comfy-cee)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GENERATED SETTINGS BEGIN HERE
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
 '(custom-safe-themes
   (quote
    ("88cac3cdd1edc9e90074d8119cc9b14764b5e7e9944d92a582406c9e67bdacdc" "b9e72874e3180f42d4ecdee8b5ecbf67fe5e922747ca50c8b9ca5960988c6277" default)))
 '(fci-rule-color "#383838")
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(package-selected-packages
   (quote
    (jedi haskell-mode github-clone gitconfig-mode github-browse-file git auto-complete clojure-mode cyberpunk-theme slime)))
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
