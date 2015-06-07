# dot.emacs.zook

## Overview

An .emacs.d configuration. Mainly for Clojure and Javascript development.

An incomplete list of features:
- undo-tree.
- clojure-mode.
- paredit.
- pretty rainbow parens.
- cider (for Clojure).
- clj-refactor.
- org-mode.
- web-mode (for React JSX editing, amongst other things).
- cyberpunk-theme.
- M-y for browe-kill-ring.
- tango-dark theme by default.
- no menu bar.
- sync with OSX clipboard.
- Two finger scrolling on OSX.
- "C-x C-b" for ibuffer.
- ido-mode.
- M-/ for hippie expand (auto-complete from text on the page).
- Search forward (C-s) and back (C-r) are regexp by default (C-M-s and C-M-r without).
- Go back to previous edit location when reopening a file.
- Copy whole line with "C-c C-k".

Useful shortcuts:
- "C-x h": mark whole buffer.

Includes files from these two fantastic emacs configs:
- Emacs Live: https://github.com/overtone/emacs-live
- emacs-for-clojure: https://github.com/flyingmachine/emacs-for-clojure

## Literate Programming

This configuration makes use of the complemantary features of Emacs 

- [Org-mode](http://orgmode.org/) 
- [Babel](http://orgmode.org/worg/org-contrib/babel/)

to enable the configuration both to be [documented](org/config.org) and dynamically executed from the same source file. 

This is a hallmark of [Literate Programming](http://www.literateprogramming.com/)


## References

Other notes and references:
- https://www.masteringemacs.org/article/introduction-to-ido-mode
