# Changelog

All notable changes to this project will be documented in this file.

This file format is loosely based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).\
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.4.0] - 2026-04-01

### New
- Added field name completions for `control`, `copyright`, `watch`, and `sources` files — auto-completes field names with `: ` separator
- Added snippets: `source` and `package` paragraphs (control), `entry` (changelog), `files` block (copyright)
- Added syntax-specific view settings for `control`, `changelog`, and `copyright` — tabs-to-spaces, trailing newline, 79-char ruler
- Added Goto Symbol support for `gbp.conf` section headers (`[DEFAULT]`, `[buildpackage]`, etc.)
- Added multi-architecture support to dependency arch-spec in `debian-control`: `[amd64 i386]` and `[!amd64 !arm64]` are now properly scoped (previously only single architectures were recognized)

### Fixes
- Fixed arch-spec regex in `debian-control` that required a hyphen in architecture names (`\w+-\w+`), causing bare names like `amd64` in bracket specs to fall through to the package-name pattern instead of getting `constant.other.architecture` scoping

## [2.3.0] - 2026-03-31

### New
- Replaced `debian-gbp-conf` INI delegation with a full custom syntax: known section names (`DEFAULT`, `buildpackage`, `import-orig`, `dch`, `push`, `pull`, `clone`, `tag`, `pristine-tar`, `pq`, `create-remote-repo`) now get `entity.name.section` scoping; key=value pairs, boolean values (`True`/`False`/`Yes`/`No`), list syntax (`[...]`), and quoted strings are all distinctly scoped
- Replaced `debian-metadata` YAML delegation with a full custom syntax: all 21 DEP-12 field names are recognized with `keyword.control` scoping; URL and email values are highlighted; YAML sequence items (`-`) and nested mapping keys (e.g., inside `Reference:` blocks) are supported
- Added known APT option key highlighting in `debian-sources-list`: 18 documented option keys (`arch`, `signed-by`, `trusted`, `by-hash`, `pdiffs`, etc.) now get `support.constant.option` scoping, distinguishing them from unknown/vendor keys
- Added sub-component captures for `debian-substvars`: namespaced variables like `misc:Depends` are now split into namespace (`variable.language.namespace`), separator (`punctuation.separator.namespace`), and type (`variable.language`) captures
- Added locale suffix support to `debian-templates`: fields like `Description-de`, `Choices-fr`, `_Description-pt-BR` are now recognized as valid field names
- Added `-R` (reverse-apply) flag highlighting in `debian-series`
- Added `nodejs`, `percent`, `urlesc` to watch-constants in `debian-watch`
- Added comprehensive tests for `debian-gbp-conf` and `debian-metadata` (previously had zero test coverage)
- Added tests for copyright character-class glob patterns (`[Mm]`, `[A-Z]`), all 13 remaining SPDX license exceptions, debhelper character-class globs and redirection operator, watch `version=3` and additional closed-set constants, changelog negative tests for invalid distribution/urgency values, format `invalid.illegal` negative test

### Fixes
- Fixed version regex in `debian-format`: changed `[0-9]*` to `[0-9]+` to prevent matching `.0 (quilt)` with an empty major version
- Fixed soversion matching in `debian-shlibs`: tightened from `\S+` to `\d[\d.]*` to only match numeric soversions
- Added try-except error handling to `detect_copyright.py` for robustness

## [2.2.0] - 2026-03-29

### New
- Added sub-component captures for symbol tags in `debian-symbols`: key, `=` separator, and typed values (architectures, endianness constants, bit-widths) are now individually scoped
- Added typed value matching for Package-List `arch=`, `essential=`, `profile=` fields in `debian-source-control`: architecture names, booleans, and comma separators now get proper scopes
- Added parenthesis scoping for SPDX license expressions in `debian-copyright`: `(` and `)` now get `punctuation.section.group` scopes
- Added URI scheme and separator sub-scoping in `debian-sources-list` and `debian-sources` for non-HTTP schemes (cdrom, mirror, file, ftp, ssh, copy)
- Added path separator (`/`) scoping in `debian-control` (autopkgtest), `debian-tests-control`, `debian-debhelper`, `debian-triggers`, `debian-sources-list` (options)
- Added `punctuation.separator.path` scoping for `Build-Path` field in `debian-buildinfo`
- Added escape sequence highlighting (`constant.character.escape`) in `debian-buildinfo` Environment quoted strings

### Fixes
- Fixed autopkgtest fields (`Tests`, `Test-Command`, `Restrictions`, etc.) in `debian-control` being swallowed by the unknown-field catch-all instead of getting proper autopkgtest scopes — moved autopkgtest include before the catch-all in `fields`
- Fixed SPDX license `+` suffix (e.g., `GPL-2+`, `LGPL-2.1+`) not being captured as part of the license identifier in `debian-copyright` — the trailing `\b` word boundary was firing before `+`
- Fixed `Tests-Directory` field in `debian-tests-control` not getting path scoping — the field was in a separate handler that lacked the path context

## [2.1.0] - 2026-03-28

### Breaking
- Renamed `meta.mapping.key.debian.sources` → `meta.mapping.key.debian` in `debian-sources` to align with all other deb822 syntaxes
- Renamed `constant.language.boolean.{true,false}.debian.sources` → `constant.language.boolean.{true,false}.debian` in `debian-sources` — boolean fields now use the shared context from `debian-common`
- Renamed `entity.name.tag.debian.lintian-overrides` → `entity.name.other.debian.lintian-overrides` for `[[screen-name]]` annotations (missed in v2.0.0 rename)
- Added `meta.mapping.key.debian` scope to colon separator captures across all deb822 field definitions — color schemes targeting `meta.mapping.key.debian` now consistently cover colons
- Comments now only match at line start (`^\s*#`) instead of anywhere on a line — correct per deb822 spec

### New
- Added `watch` file version 5 support (RFC 822 paragraph format with `Version: 5` header)
- Added `detect_copyright.py` plugin to work around a file extension conflict with the A File Icon package
- Added `invalid.illegal` validation for closed-set fields: `Priority`, `Multi-Arch`, `Essential`, `Package-Type` (control); `Enabled`, `Types`, `By-Hash`, boolean fields (sources)
- Added watch template name constants (`GitHub`, `GitLab`, `Npmregistry`, `Pypi`, `CRAN`, `Bioconductor`, `Metacpan`)
- Added uscan substitution variable highlighting (`@PACKAGE@`, `@ANY_VERSION@`, etc.)
- Added parenthesized bug-close form support: `(Closes: #12345, #12346)`
- Added URL scheme and separator sub-scoping (`markup.underline.link.scheme`, `markup.underline.link.separator`)
- Added `deb822-unknown-field` catch-all to `debian-alternatives`
- Added shared contexts in `debian-common`: `suite-pop`, `compression-formats`, `dpkg-source-options`, `bug-close-inner`

### Changes
- Moved comment handling into `prototype` context across all 25 applicable syntaxes (Sublime Text best practice — comments now work in all sub-contexts)
- Made colon mandatory in all deb822 field matchers (`(:)?` → `(:)`)
- Extracted shared `path-value` context in `debian-alternatives` (was duplicated 3 times)
- Extracted shared `watch-constants` and `watch-variables` contexts in `debian-watch`
- Replaced `syntax_test_debian.sources` with expanded `syntax_test_sources.sources` (107 → 210 lines)
- Separated semantic version build metadata into distinct capture groups
- Removed dead `standards-version` context from `debian-common` (now handled by generic `semantic-version`)
- Removed duplicate `needs-recommends` from autopkgtest restrictions regex
- Simplified watch `option-value-end` regex
- Expanded `examples/watch` with version 5 example

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
