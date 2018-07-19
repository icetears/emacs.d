(require-package 'go-mode)
(require-package 'company-go)
(require 'company-go)

(add-auto-mode 'go-mode 
			   "\\.go\\'"
			   )

(after-load 'company
      (add-hook 'go-mode-hook
                (lambda () (sanityinc/local-push-company-backend 'company-go))))


(add-hook 'before-save-hook #'gofmt-before-save)
(ac-config-default)
(setenv "GOPATH" (concat ""
                         "/home/xiao/work/go"))

(provide 'init-go)
