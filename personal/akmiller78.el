;; set C-i to indent relative to line above
(define-key input-decode-map (kbd "C-i") (kbd "H-i"))
(global-set-key (kbd "H-i") 'indent-relative)

;; enable line numbers
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; add aggressive indent mode
;; dracula theme shouldn't be here as we set the theme in preloads but install it here
;; should figure out how to do the install in the pre-loads
(prelude-require-packages '(aggressive-indent dracula-theme))

;; enable agressive indent for clojure
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

;; enable smartparens for clojure
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)

;; enable rainbow parens for clojure
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)

(setq auto-save-default nil)
(setq prelude-auto-save nil)
(super-save-stop)
