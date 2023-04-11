  (custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(all-the-icons-dired dired-sidebar use-package desktop-environment exwm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(outline-minor-0 ((t (:extend t)))))


;; MININAL
;; ================================================================================

(message "og")
(use-package emacs
  :bind
  (;("C-a" . fhb/c-a )
   (:repeat-map global-map-repeat-map
                ("C-n" . next-line )); 
   )
  )

(with-eval-after-load "outline"
  (require 'foldout))




;; (icomplete-mode)
;; (icomplete-vertical-mode t);; builtin from 28!


(defun fhb/reload-os-keys ()
  (interactive)
  (shell-command "xfconf-query -c xsettings -p /Gtk/KeyThemeName -s Emacs
xmodmap -e 'keycode 65 = Control_R'                    
xmodmap -e 'add Control = Control_R'                   
xmodmap -e 'keycode 100 = space'                
xmodmap -e 'keycode 108 = space space space space'    
xmodmap -e 'keycode 102 = Alt_L space space space'                       
xmodmap -e 'keycode 133 = Shift_L space space space'
")
;; xkbset sticky -twokey -latchlock                       
;; xkbset exp 1 =accessx sticky =twokey                   
  )


(define-key global-map (kbd "C-`") 'fhb/reload-os-keys); defun loaded!
(define-key global-map (kbd "C-q") 'kill-line)
(define-key global-map (kbd "C-r") 'eval-region)
(define-key global-map (kbd "C-h") 'backward-delete-char)
(define-key global-map (kbd "C-SPC") 'fhb/c-spc-at-start)
(define-key global-map (kbd "C-j") 'fhb/c-spc-at-start-prefix); loaded
(define-key ctl-x-map (kbd "a") 'outline-hide-sublevels)
(define-key ctl-x-map (kbd "x") 'execute-extended-command)
(define-key ctl-x-map (kbd "i") 'outline-previous-visible-heading)
(define-key ctl-x-map (kbd "j") 'outline-hide-subtree)
(define-key ctl-x-map (kbd "k") 'outline-next-visible-heading)
(define-key ctl-x-map (kbd "l") 'outline-show-branches)

(define-key global-map (kbd "C-.") '(lambda () (interactive) (find-file "~/Nextcloud/computer/emacs/cemacs/config/fhb-one-file-v2.el")))
(use-package selected
    :ensure t
    :load-path "~/.emacs.d/elpa"
    ;:diminish selected-minor-mode
    :config
    (selected-global-mode)
    (define-key selected-keymap
      (kbd "x") '(lambda () (interactive) (eval-region) (region evalled)))
)




;; ================================================================================
(load-file "/home/fhb/Nextcloud/computer/emacs/cemacs/config/fhb-one-file-v2.el")


(defun fhb/init ()
  (interactive)
(load-file "/home/fhb/Nextcloud/computer/emacs/cemacs/config/fhb-one-file-v2.el"))
  

(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
