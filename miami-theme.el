;;; miami-theme.el --- Emacs theme with a dark background.

;; Copyright (C) 2018 , Sebastian Klingler

;; Author: Sebastian Klingler
;;
;; Version: 0.1
;; Package-Requires: ((emacs "24"))
;; Created with emacs-theme-generator, https://github.com/mswift42/theme-creator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:

 (deftheme miami)
 (let ((class '((class color) (min-colors 89)))
       (fg1 "#F8F8F8")
       (fg2 "#e2e2e2")
       (fg3 "#cccccc")
       (fg4 "#b6b6b6")

       (bg0 "#1a1a1a")
       (bg1 "#1a1a1a")
       (bg2 "#2e2e2e")
       (bg3 "#4b4b4b")
       (bg4 "#5a5a5a")
       (bg5 "#8e8e8e")
       (key2 "#4fd2ff")
       (key3 "#17b3e0")
       (keyword "#01CCFF")
       (const   "#00FFDD")
       (comment "#AEAEAE")
       (func    "#FFEA00")
       (str     "#00FFAE")
       (warning "#ff2323"))
   (custom-theme-set-faces
   'miami
   `(default ((,class (:background ,bg2 :foreground ,fg1))))
   `(cursor ((,class (:background ,fg1))))
   `(region ((,class (:background ,bg0))))
   `(hl-line ((,class (:background ,bg2))))
   `(linum-relative-current-face ((,class (:background ,bg0 :foreground ,fg2))))
   `(fringe ((,class nil)))
   `(powerline-active1 ((,class (:background ,bg2, :box nil))))
   `(powerline-active2 ((,class (:background ,bg2 :box nil))))
   `(powerline-inactive2 ((,class (:background ,bg2))))
   `(spacemacs-normal-face ((,class (:background ,str :foreground ,bg2 :box nil))))
   `(spacemacs-insert-face ((,class (:background ,func :foreground,bg2 :box nil))))
   `(spacemacs-visual-face ((,class (:background ,keyword :foreground ,bg2))))
   `(spacemacs-motion-face ((,class (:background ,str :foreground ,bg2))))
   `(whitespace-indentation ((,class (:background ,bg2 :foreground ,bg3))))
   `(whitespace-newline ((,class (:background ,bg2 :foreground ,bg2))))
   `(whitespace-space ((,class (:background ,bg2 :foreground ,bg3))))
   `(whitespace-tab ((,class (:background ,bg2 :foreground ,bg3))))
   `(whitespace-hspace ((,class (:background ,bg2 :foreground ,bg3))))
   `(whitespace-empty ((,class (:background ,bg2 :foreground ,bg3))))

   `(mode-line ((,class (:box nil :background ,bg1 :foreground ,bg5))))
   `(mode-line-inactive ((,class (:foreground ,bg5 :background ,bg2 :weight normal))))
   `(mode-line-buffer-id ((,class (:foreground ,fg1 :background nil))))
   `(mode-line-highlight ((,class (:foreground ,keyword :box nil :weight bold))))
   `(mode-line-emphasis ((,class (:foreground ,fg1))))

   `(font-lock-builtin-face ((,class (:foreground ,func))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-negation-char-face ((,class (:foreground ,const))))
   `(font-lock-reference-face ((,class (:foreground ,const))))
   `(font-lock-constant-face ((,class (:foreground ,const))))
   `(font-lock-doc-face ((,class (:foreground ,comment))))
   `(font-lock-function-name-face ((,class (:foreground ,func))))
   `(font-lock-keyword-face ((,class (:foreground ,keyword))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,fg1 ))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg1))))
   `(font-lock-warning-face ((,class (:foreground ,warning :background ,bg0))))
   `(highlight ((,class (:foreground ,fg3 :background ,bg3))))
   `(show-paren-match ((,class (:foreground ,keyword))))
   `(sp-wrap-pair-match-face ((,class (:foreground ,keyword))))
   `(isearch ((,class (:bold t :foreground ,warning :background ,bg3))))
   `(vertical-border ((,class (:foreground ,bg1))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
   `(default-italic ((,class (:italic t))))
   `(link ((,class (:foreground ,const :underline t))))
   `(org-indent ((,class (:foreground ,bg2 :background ,bg2))))
   `(org-code ((,class (:foreground ,fg2))))
   `(org-hide ((,class (:foreground ,fg4))))
   `(org-level-1 ((,class (:bold t :foreground ,const :height 1.1))))
   `(org-level-2 ((,class (:bold nil :foreground ,keyword))))
   `(org-level-3 ((,class (:bold t :foreground ,str))))
   `(org-level-4 ((,class (:bold nil :foreground ,fg1))))
   `(org-date ((,class (:underline t :foreground ,fg1) )))
   `(org-footnote  ((,class (:underline t :foreground ,fg4))))
   `(org-link ((,class (:underline t :foreground ,fg1 ))))
   `(org-special-keyword ((,class (:foreground ,func))))
   `(org-block ((,class (:foreground ,fg3))))
   `(org-quote ((,class (:inherit org-block :slant italic))))
   `(org-verse ((,class (:inherit org-block :slant italic))))
   `(org-todo ((,class (:box (:line-width 1 :color ,fg3) :foreground ,keyword :bold t))))
   `(org-done ((,class (:box (:line-width 1 :color ,bg3) :bold t :foreground ,bg4))))
   `(org-warning ((,class (:underline t :foreground ,warning))))
   `(org-agenda-structure ((,class (:weight bold :foreground ,fg3 :box (:color ,fg4) :background ,bg3))))
   `(org-agenda-date ((,class (:foreground ,fg1 :height 1.1 ))))
   `(org-agenda-date-weekend ((,class (:weight normal :foreground ,fg4))))
   `(org-agenda-date-today ((,class (:weight bold :foreground ,keyword :height 1.4))))
   `(org-agenda-done ((,class (:foreground ,bg4))))
   `(org-scheduled ((,class (:foreground ,fg1))))
   `(org-scheduled-today ((,class (:foreground ,func :weight bold :height 1.2))))
   `(org-ellipsis ((,class (:foreground ,fg1))))
   `(org-verbatim ((,class (:foreground ,fg4))))
   `(org-document-info-keyword ((,class (:foreground ,func))))
   `(font-latex-bold-face ((,class (:foreground ,fg1))))
   `(font-latex-italic-face ((,class (:foreground ,key3 :italic t))))
   `(font-latex-string-face ((,class (:foreground ,str))))
   `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
   `(font-latex-match-variable-keywords ((,class (:foreground ,fg1))))
   `(do-only-match ((,class (:foreground ,warning))))
   `(org-sexp-date ((,class (:foreground ,fg4))))
   `(ido-first-match ((,class (:foreground ,keyword :bold t))))
   `(gnus-header-content ((,class (:foreground ,keyword))))
   `(gnus-header-from ((,class (:foreground ,fg1))))
   `(gnus-header-name ((,class (:foreground ,fg1))))
   `(gnus-header-subject ((,class (:foreground ,func :bold t))))
   `(mu4e-view-url-number-face ((,class (:foreground ,fg1))))
   `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
   `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
   `(mu4e-header-marks-face ((,class (:foreground ,fg1))))
   `(ffap ((,class (:foreground ,fg4))))
   `(js2-private-function-call ((,class (:foreground ,const))))
   `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,str))))
   `(js2-jsdoc-html-tag-name ((,class (:foreground ,key2))))
   `(js2-external-variable ((,class (:foreground ,fg1  ))))
   `(js2-function-param ((,class (:foreground ,const))))
   `(js2-jsdoc-value ((,class (:foreground ,fg1))))
   `(js2-private-member ((,class (:foreground ,fg3))))
   `(js2-function-param ((,class (:foreground ,fg1))))
   `(js2-object-property ((,class (:foreground ,str))))
   `(js2-object-property ((,class (:foreground ,str))))
   `(js2-object-property-access ((,class (:foreground ,fg1))))
   `(js3-warning-face ((,class (:underline ,keyword))))
   `(js3-error-face ((,class (:underline ,warning))))
   `(js3-external-variable-face ((,class (:foreground ,fg1))))
   `(js3-function-param-face ((,class (:foreground ,key3))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
   `(js3-instance-member-face ((,class (:foreground ,const))))
   `(warning ((,class (:foreground ,warning))))
   `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
   `(info-quoted-name ((,class (:foreground ,fg1))))
   `(info-string ((,class (:foreground ,str))))
   `(icompletep-determined ((,class :foreground ,fg1)))
   `(undo-tree-visualizer-current-face ((,class :foreground ,fg1)))
   `(undo-tree-visualizer-default-face ((,class :foreground ,fg2)))
   `(undo-tree-visualizer-unmodified-face ((,class :foreground ,fg1)))
   `(undo-tree-visualizer-register-face ((,class :foreground ,fg1)))
   `(slime-repl-inputed-output-face ((,class (:foreground ,fg1))))
   `(trailing-whitespace ((,class :foreground nil :background ,warning)))
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,fg1)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,fg1)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,fg1)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,const)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,keyword)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,fg1)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,fg1)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,fg1)))
   `(magit-item-highlight ((,class :background ,bg3)))
   `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
   `(magit-hunk-heading           ((,class (:background ,bg3))))
   `(magit-section-highlight      ((,class (:background ,bg0))))
   `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
   `(magit-diffstat-added   ((,class (:foreground ,fg1))))
   `(magit-diffstat-removed ((,class (:foreground ,fg1))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-branch ((,class (:foreground ,const :weight bold))))
   `(magit-log-author ((,class (:foreground ,fg3))))
   `(magit-hash ((,class (:foreground ,fg2))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
   `(lazy-highlight ((,class (:foreground ,fg2 :background ,bg3))))
   `(term ((,class (:foreground ,fg1 :background ,bg2))))
   `(term-color-bg0 ((,class (:foreground ,bg3 :background ,bg3))))
   `(term-color-blue ((,class (:foreground ,func :background ,func))))
   `(term-color-red ((,class (:foreground ,keyword :background ,bg3))))
   `(term-color-green ((,class (:foreground ,fg1 :background ,bg3))))
   `(term-color-yellow ((,class (:foreground ,fg1 :background ,fg1))))
   `(term-color-magenta ((,class (:foreground ,fg1 :background ,fg1))))
   `(term-color-cyan ((,class (:foreground ,str :background ,str))))
   `(term-color-white ((,class (:foreground ,fg2 :background ,fg2))))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))
   `(helm-header ((,class (:foreground ,fg2 :background ,bg2 :underline nil :box nil))))
   `(helm-source-header ((,class (:foreground ,keyword :background ,bg2 :underline nil :weight bold))))
   `(helm-selection ((,class (:background ,bg0 :underline nil))))
   `(helm-selection-line ((,class (:background ,bg0))))
   `(helm-visible-mark ((,class (:foreground ,bg2 :background ,bg3))))
   `(helm-candidate-number ((,class (:foreground ,bg2 :background ,fg1))))
   `(helm-separator ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-time-zone-current ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-time-zone-home ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-buffer-not-saved ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-buffer-process ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-buffer-saved-out ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-buffer-size ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-ff-directory ((,class (:foreground ,func :background ,bg2 :weight bold))))
   `(helm-ff-file ((,class (:foreground ,fg1 :background ,bg2 :weight normal))))
   `(helm-ff-executable ((,class (:foreground ,key2 :background ,bg2 :weight normal))))
   `(helm-ff-invalid-symlink ((,class (:foreground ,key3 :background ,bg2 :weight bold))))
   `(helm-ff-symlink ((,class (:foreground ,keyword :background ,bg2 :weight bold))))
   `(helm-ff-prefix ((,class (:foreground ,bg2 :background ,keyword :weight normal))))
   `(helm-grep-cmd-line ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-grep-file ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-grep-finish ((,class (:foreground ,fg2 :background ,bg2))))
   `(helm-grep-lineno ((,class (:foreground ,fg1 :background ,bg2))))
   `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((,class (:foreground ,func :background ,bg2))))
   `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg2))))
   `(helm-source-go-package-godoc-description ((,class (:foreground ,str))))
   `(helm-bookmark-w3m ((,class (:foreground ,fg1))))
   `(company-echo-common ((,class (:foreground ,bg2 :background ,fg1))))
   `(company-preview ((,class (:background ,bg2 :foreground ,key2))))
   `(company-preview-common ((,class (:foreground ,bg0 :foreground ,fg3))))
   `(company-preview-search ((,class (:foreground ,fg1 :background ,bg2))))
   `(company-scrollbar-bg ((,class (:background ,bg3))))
   `(company-scrollbar-fg ((,class (:foreground ,keyword))))
   `(company-tooltip ((,class (:foreground ,fg2 :background ,bg2 :bold t))))
   `(company-tooltop-annotation ((,class (:foreground ,const))))
   `(company-tooltip-common ((,class ( :foreground ,fg3))))
   `(company-tooltip-common-selection ((,class (:foreground ,str))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg3 :foreground ,fg3))))
   `(company-template-field ((,class (:inherit region))))
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-keyword-face ((,class (:foreground ,keyword))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-string-face ((,class (:foreground ,str))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
   `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
   `(web-mode-html-tag-face ((,class (:foreground ,fg1))))
   `(jde-java-font-lock-package-face ((t (:foreground ,fg1))))
   `(jde-java-font-lock-public-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-private-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-constant-face ((t (:foreground ,const))))
   `(jde-java-font-lock-modifier-face ((t (:foreground ,key3))))
   `(jde-jave-font-lock-protected-face ((t (:foreground ,keyword))))
   `(jde-java-font-lock-number-face ((t (:foreground ,fg1))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'miami)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; miami-theme.el ends here
