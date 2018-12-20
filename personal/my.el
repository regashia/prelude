;; Unix style C-h
(define-key key-translation-map (kbd "C-h") (kbd "<DEL>"))
(define-key key-translation-map (kbd "M-h") (kbd "<C-backspace>"))
(define-key key-translation-map (kbd "DEL") (kbd "C-h"))
(define-key key-translation-map (kbd "M-DEL") (kbd "M-h"))

;; Always follow symlink
(setq vc-follow-symlinks t)

;; Use C-q to my keybind prefix
(global-set-key (kbd "C-q") nil)

;; fzf
(prelude-require-packages '(fzf))
(global-set-key (kbd "C-q C-f")
  (lambda ()
    (interactive)
    (setq fzf/executable (concat user-emacs-directory "fzf-files"))
    (fzf)))
(global-set-key (kbd "C-q d")
  (lambda ()
    (interactive)
    (setq fzf/executable (concat user-emacs-directory "fzf-directories"))
    (fzf)))
(global-set-key (kbd "C-q f")
  (lambda ()
    (interactive)
    (setq fzf/executable (concat user-emacs-directory "fzf-grep"))
    (fzf)))
