 ;; packaging 101
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

 ;; load config from org file
(org-babel-load-file "~/.emacs.d/proxy.org")
 ;; load config from org file
(org-babel-load-file "~/.emacs.d/config.org")
