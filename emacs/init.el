;;; init --- script
;;; Commentary:
;;; Starts stuff
;;; Code:
(package-initialize)

(require 'org)
(org-babel-load-file
 (expand-file-name "orgconf.org"
		   user-emacs-directory))

(put 'dired-find-alternate-file 'disabled nil)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-view-program-selection
   (quote
    (((output-dvi has-no-display-manager)
      "dvi2tty")
     ((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Zathura")
     (output-html "xdg-open"))))
 '(package-selected-packages
   (quote
    (tao-theme xkcd yasnippet swiper smartparens pdf-tools packed monokai-theme magit linum-relative jump-char helm-swoop helm-projectile helm-flycheck helm-company fill-column-indicator f embrace darktooth-theme company-math color-theme-sanityinc-tomorrow change-inner auctex ace-window ace-mc))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common ((t (:inherit company-preview))))
 '(company-tooltip ((t (:background "gray4" :foreground "gray85"))))
 '(company-tooltip-annotation ((t (:background "gray4" :foreground "SandyBrown"))))
 '(company-tooltip-annotation-selection ((t (:background "gray15" :foreground "SandyBrown"))))
 '(company-tooltip-common ((t (:background "gray4" :foreground "gray42"))))
 '(company-tooltip-common-selection ((t (:background "gray15" :foreground "gray69"))))
 '(company-tooltip-selection ((t (:background "gray15" :foreground "gray100")))))
