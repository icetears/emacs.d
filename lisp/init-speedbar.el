(require-package 'sr-speedbar)

(custom-set-variables
'(speedbar-supported-extension-expressions
   (quote
   (".org" ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".js" ".f\\(90\\|77\\|or\\)?" ".ad[abs]" ".p[lm]" ".tcl" ".m" ".sc    m" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".go")))
)

(add-hook
   'speedbar-timer-hook
   (lambda ()
       (save-excursion
       (set-buffer speedbar-buffer)
       (speedbar-expand-line))))


(provide 'init-speedbar)
