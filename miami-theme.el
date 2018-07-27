;;; miami-theme.el --- A dark theme for emacs

;; Copyright (C) 2018 Sebastian Klingler

;; Author: Sebastian Klingler <sliptype@gmail.com>
;; Keywords: themes
;; URL: http://github.com/sliptype/miami-theme
;; Version: 0.1
;; Package-Requires: ((emacs "24.1"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; To use it, put the following in your Emacs configuration file:
;;
;;   (load-theme 'miami t)
;;
;; Requirements: Emacs 24.

;;; Code:

(deftheme miami
  "A dark theme for emacs")

(let ((class '((class color) (min-colors 89)))

       (fg1 "#F8F8F8")
       (bg1 "#2e2e2e")
       (bg2 "#0000000")
       (keyword "#01CCFF")
       (constant "#00FFDD")
       (comment "#AEAEAE")
       (func    "#FFEA00")
       (str     "#00FFAE")
       (warning "#ff2323"))

  (custom-theme-set-faces
  'miami
    `(default ((,class (:inherit nil :stipple nil :background ,bg1 :foreground ,fg1 :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "nil" :family "Source Code Pro"))))

    `(font-lock-builtin-face ((,class (:foreground ,fg1))))
    `(font-lock-type-face ((,class (:foreground ,fg1))))
    `(font-lock-variable-name-face ((,class (:foreground ,fg1))))
    `(js2-function-param ((,class (:foreground ,fg1))))
    `(js2-object-property-access ((,class (:foreground ,fg1))))

    `(hl-line ((,class (:background ,bg1))))

    `(cursor ((,class (:background ,bg2))))
    `(region ((,class (:background ,bg2))))))
    `(highlight ((,class (:background ,bg2))))
    `(linum-relative-current-face ((,class (:background ,bg2))))

    `(font-lock-comment-face ((,class (:foreground ,comment))))
    `(font-lock-comment-delimiter-face ((,class (:foreground ,comment))))
    `(font-lock-doc-face ((,class (:foreground ,comment))))
    `(font-lock-negation-char-face ((,class (:foreground ,comment))))

    `(font-lock-constant-face ((,class (:foreground ,constant))))

    `(font-lock-function-name-face ((,class (:foreground ,func))))

    `(font-lock-keyword-face ((,class (:foreground ,keyword))))
    `(show-paren-match ((,class (:foreground ,keyword))))
    `(sp-wrap-pair-match-face ((,class (:foreground ,keyword))))

    `(font-lock-string-face ((,class (:foreground ,str))))
    `(js2-object-property ((,class (:foreground ,str))))

    `(fringe ((,class nil)))


;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  ;; add theme folder to `custom-theme-load-path' when installing over MELPA
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'miami)

;;; miami-theme.el ends here
