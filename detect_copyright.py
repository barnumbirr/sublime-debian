"""
Auto-detect debian/copyright (DEP-5) files.

The "A File Icon" package (https://github.com/SublimeText/AFileIcon)
generates syntax aliases in a `zzz A File Icon/aliases/` directory to
provide file-specific icons.  One of these aliases, "Plain Text (License)",
claims the `copyright` extension with scope `text.plain.license`.

Because Sublime Text loads user packages alphabetically, `zzz A File Icon`
loads after `Debian Syntax` and its alias wins the extension match.

A File Icon auto-deletes an alias when it finds a non-hidden syntax with
the *same scope*.  However, our copyright syntax uses `text.debian.license`
(not `text.plain.license`), so A File Icon does not recognise us as the
real syntax and keeps its alias in place.

This listener works around the conflict by reassigning the syntax on load
when the file is named `copyright` and starts with `Format:` (the DEP-5
machine-readable copyright marker).
"""

import os
import sublime
import sublime_plugin

_COPYRIGHT_SYNTAX = "Packages/Debian Syntax/Syntaxes/debian-copyright.sublime-syntax"


class DebianCopyrightDetectListener(sublime_plugin.EventListener):
    def on_load(self, view):
        self._detect(view)

    def on_pre_save(self, view):
        self._detect(view)

    def _detect(self, view):
        try:
            filename = view.file_name()
            if not filename:
                return
            basename = os.path.basename(filename)
            if basename != "copyright":
                return
            # Already using our syntax
            if view.syntax() and view.syntax().path == _COPYRIGHT_SYNTAX:
                return
            # Check first line for DEP-5 format marker
            first_line = view.substr(view.line(0))
            if first_line.startswith("Format:"):
                view.assign_syntax(_COPYRIGHT_SYNTAX)
        except Exception:
            pass
