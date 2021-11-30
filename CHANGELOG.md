# Changelog

All notable changes to this project will be documented in this file.

This file format is loosely based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).\
This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### New
### Changes
### Deprecated
### Removed
### Fixes
- Added missing Debian file formats
- Updated Lintian tags
- Fixed local-options matching and scopes
### Security

## [1.4.2] - 19-11-2021

### New
- Added binNMU syntax
- Added Architecture relationship syntax
- Added autopkgtest syntax

### Fixes
- Added missing `Multi-Arch` field to control file
- Added missing `gir:Depends` substvar to control file

## [1.4.1] - 27-08-2021

### Fixes
- Added missing `Installed-Size` to control file (Closes: [#7](https://github.com/barnumbirr/sublime-debian/issues/7)

## [1.4.0] - 26-06-2021

### New
- Added comment character definition through `Comments.tmPreferences`
- Improved syntax detection in `.dsc` files significantly

### Fixes
- Added comment context to all syntax files

## [1.3.2] - 22-06-2021

### Fixes
- Fixed commented lines breaking syntax highlighting in `control` files (Closes: [#6](https://github.com/barnumbirr/sublime-debian/issues/6))
- Improved matching for mathematical symbols in `semver-flag`
- Fixed syntax highlighting for upstream license in `copyright`

## [1.3.1] - 27-02-2021

### Fixes
- Fixed scope for standards-version-value (Closes: [#3](https://github.com/barnumbirr/sublime-debian/issues/3))
- Relaxed scope in `date-iso`

## [1.3.0] - 22-02-2021

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

## [1.2.0] - 06-02-2021

### Changes
- Updated screenshots in README
- Added link direct link to Packagecontrol in README
- Added some context-dependence to all syntax files (started in
[PR#1](https://github.com/barnumbirr/sublime-debian/pull/1)) by [michaelblyons](https://github.com/michaelblyons).

### Fixes
- Fixed case-sensitive fields in `debian/control`
- Removed version number in `messages/install.txt`

## [1.1.0] - 05-01-2021

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

## [1.0.0] - 03-01-2021

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
