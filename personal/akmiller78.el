;; set C-i to indent relative to line above
(define-key input-decode-map (kbd "C-i") (kbd "H-i"))
(global-set-key (kbd "H-i") 'indent-relative)

;; enable line numbers
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

