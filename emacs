;;;; Happy Emacs 24.5 for Windows 10 ;;;;
;; Things that suddenly ceased working in 24.5. To be more precise, *all* dead keys which worked before as usual ceased to work in 24.5.
;; I'm not sure what exactly happened or was it even some version fuckup, but all dead keys suddenly produced messages such as "<dead-acute> is undefined".  2015-11-27
;; Running Emacs in Windows 10 and the problem is gone but different kind of problem persists. Now doubletapping diacrit characters produces two of them ¨¨ ~~ ´´ ``, while standard behaviour in Linux was to produce one after doubletap ¨ ~ ´ `
;; Now investigating entirely platform independent way to bind those dead keys so that it produces wanted result on first press. 2015-12-03
;; In Windows 10 follow this guide when necessary to get experience close to Fedora http://bit.ly/1TLwVm1

;; Enable MELPA Package Repository melpa.org
(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(when (< emacs-major-version)
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; General Usability Tweaks
(setq gc-cons-threshold 10000000)
(desktop-save-mode 1)
(setq-default buffer-file-coding-system 'utf-8-unix)
(setq-default fill-column 80)
(fset 'yes-or-no-p 'y-or-n-p)
(column-number-mode 1)
(line-number-mode 1)
(size-indication-mode 1)
(tool-bar-mode -1)
(setq blink-cursor-blinks 0)
(blink-cursor-mode 1)
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
(show-paren-mode 1)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(setq tab-always-indent 'complete)
(setq scroll-preserve-screen-position 1)
(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'python-mode)

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

(defun scandi-be-gone ()
  (local-set-key (kbd "¨") (kbd "~"))
  (local-set-key (kbd "§") (kbd "`"))
  (local-set-key (kbd "å") (kbd "`"))
  (local-set-key (kbd "ö") (kbd "("))
  (local-set-key (kbd "ä") (kbd ")")))

;; Text Mode
(defun comfy-text ()
  (local-set-key (kbd "C-c <deletechar>") 'kill-paragraph))
(add-hook 'text-mode-hook 'comfy-text)
(add-hook 'text-mode-hook 'visual-line-mode)

;; Haskell
(defun comfy-haskell ()
  (scandi-be-gone)
  (haskell-indentation-mode 1))
(add-hook 'haskell-mode-hook 'comfy-haskell)

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

;; C, C++, Java
(defun comfy-cee ()
  (scandi-be-gone)
  (capitalized-words-mode 1))
(add-hook 'c-mode-hook 'comfy-cee)
(add-hook 'c++-mode-hook 'comfy-cee)
(add-hook 'java-mode-hook 'comfy-cee) 


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
 '(custom-safe-themes
   (quote
    ("88cac3cdd1edc9e90074d8119cc9b14764b5e7e9944d92a582406c9e67bdacdc" "b9e72874e3180f42d4ecdee8b5ecbf67fe5e922747ca50c8b9ca5960988c6277" default)))
 '(fci-rule-color "#383838")
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(package-selected-packages
   (quote
    (cider geiser jedi haskell-mode github-clone gitconfig-mode github-browse-file git auto-complete clojure-mode cyberpunk-theme slime)))
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
