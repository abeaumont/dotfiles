;;; Package initialization
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(use-package deadgrep :ensure t)
(use-package magit :ensure t)
(use-package multiple-cursors :ensure t)
