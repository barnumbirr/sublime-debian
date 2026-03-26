# Changelog

All notable changes to this project will be documented in this file.

This file format is loosely based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).\
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2026-03-26

### Breaking
- Renamed several scopes to follow Sublime Text naming conventions:
    - `constant.language.debian` → `support.constant.debian` (codenames, suites)
    - `entity.name.tag.*` → `entity.name.other.*` (triggers, symbols)
    - `keyword.operator.arithmetic.*` → `keyword.operator.comparison/logical.*` (version ops, arch negation)
    - `variable.other.debian.debhelper` → `variable.language.debian.debhelper`
- Removed file-specific scope suffixes from `source-options`, `local-options`, and changelog bug-close patterns — now use shared contexts from `debian-common`

### New
- Added syntax highlighting for 9 new Debian packaging file types: `debian/source/options`, `debian/gbp.conf`, `debian/patches/series`, debhelper file lists (`*.install`, `*.dirs`, `*.links`, `*.docs`, `*.clean`, `*.manpages`, `*.examples`, `*.not-installed`), `debian/*.maintscript`, `debian/*.symbols`, `debian/*.triggers`, `.buildinfo`, `.changes`
- Added deep value-level scoping across all syntax files — field values now get context-aware coloring for architectures, sections, priorities, package types, booleans, version constraints, license identifiers, copyright years, glob patterns, compression formats, urgency levels, bug references, and more
- Added field-specific contexts for `control`: Uploaders (comma separators), Build-Profiles (`<!nocheck>` syntax), Tag (debtag `facet::value`), Description (synopsis vs body)
- Added field-specific contexts for `copyright`: License (`WITH` exceptions, ~55 SPDX identifiers), Copyright (`©`/`(c)` symbol, year ranges), Files (glob operators)
- Added field-specific contexts for `.dsc`: Format (`3.0 (quilt)` type keywords), Architecture, Dgit (commit hash), Package-List (`key=value` tuples)
- Added field-specific contexts for `.changes`/`.buildinfo`: Architecture, Date, Environment
- Added PGP signed message header support for `.dsc`, `.changes`, `.buildinfo`
- Added shared reusable contexts in `debian-common`: suites, architectures, dependency values, checksum values, urgency, bug-close, dpkg-source options, compression formats, PGP signed message
- Added syntax highlighting for 5 additional Debian file types: `/etc/apt/sources.list` (one-line format), `debian/tests/control` (autopkgtest), `debian/*.alternatives`, `debian/*.shlibs`, `debian/substvars`
- Added `.conffiles` and `.info` extensions to debhelper file-list syntax
- Added `first_line_match` patterns to all syntax files
- Added comprehensive syntax tests and example files for all syntax definitions (27 user-facing + 1 shared utility)

### Changes
- Added missing fields across all deb822 syntax files (control, sources, source-control, changes, buildinfo)
- Updated `watch` options, `local-options`, Lintian tags, and autopkgtest restrictions to match current specs
- Fixed version constraint operators to match all five Debian Policy §7.1 operators (`<<`, `<=`, `=`, `>=`, `>>`)
- Hardened CI workflow: explicit permissions, SHA-pinned actions, `workflow_dispatch`
- Numerous bug fixes: regex corrections, capture group alignment, PGP block termination, duplicate field removal, scope naming consistency

## [1.4.2] - 2021-11-19

### New
- Added binNMU syntax
- Added Architecture relationship syntax
- Added autopkgtest syntax

### Fixes
- Added missing `Multi-Arch` field to control file
- Added missing `gir:Depends` substvar to control file

## [1.4.1] - 2021-08-27

### Fixes
- Added missing `Installed-Size` to control file (Closes: [#7](https://github.com/barnumbirr/sublime-debian/issues/7))

## [1.4.0] - 2021-06-26

### New
- Added comment character definition through `Comments.tmPreferences`
- Improved syntax detection in `.dsc` files significantly

### Fixes
- Added comment context to all syntax files

## [1.3.2] - 2021-06-22

### Fixes
- Fixed commented lines breaking syntax highlighting in `control` files (Closes: [#6](https://github.com/barnumbirr/sublime-debian/issues/6))
- Improved matching for mathematical symbols in `semver-flag`
- Fixed syntax highlighting for upstream license in `copyright`

## [1.3.1] - 2021-02-27

### Fixes
- Fixed scope for standards-version-value (Closes: [#3](https://github.com/barnumbirr/sublime-debian/issues/3))
- Relaxed scope in `date-iso`

## [1.3.0] - 2021-02-22

### New
- Added FUNDING.yml for Github Sponsors
- Added syntax highlighting for the following Debian packaging file:
     - `debian/source/local-options`
     - `debian/*.doc-base`
     - `debian/*.lintian-overrides`

### Changes
- Added better scope granularity for `debian/source/format`
- Fixed link to backuppc VCS tag in README
- Improved semantic-version regex in `debian-common.sublime-syntax` substantially
- Added syntax highlighting to `Standards-Version` in `debian-control.sublime-syntax`

## [1.2.0] - 2021-02-06

### Changes
- Updated screenshots in README
- Added link direct link to Packagecontrol in README
- Added some context-dependence to all syntax files (started in
[PR#1](https://github.com/barnumbirr/sublime-debian/pull/1)) by [michaelblyons](https://github.com/michaelblyons).

### Fixes
- Fixed case-sensitive fields in `debian/control`
- Removed version number in `messages/install.txt`

## [1.1.0] - 2021-01-05

### New
- Added syntax highlighting for the following Debian packaging file:
     - `debian/upstream/metadata`
     - `debian/NEWS`
     - `debian/*.templates`
- Added changelog file

### Changes
- Renamed syntax file names to lowercase
- Renamed `debian-sourcepackage.sublime-syntax` to `debian-source-control.sublime-syntax` following Debian naming convention

### Fixes
- Fixed typo in README when referring to package name in manual installation step

## [1.0.0] - 2021-01-03

Initial release.

### New
- Added syntax highlighting for the following Debian packaging file:
    -   `debian/source/format`
    -   `debian/changelog`
    -   `debian/compat`
    -   `debian/control`
    -   `debian/copyright`
    -   `debian/watch`
    -   `.dsc`
- Uploaded package to [Packagecontrol/Debian Syntax](https://packagecontrol.io/packages/Debian%20Syntax)
