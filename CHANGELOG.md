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
### Security

## [1.3.0] - 22-02-2021

### New
- Added FUNDING.yml for Github Sponsors
- Syntax highlighting added for the following Debian packaging file:
     - `debian/source/local-options`
     - `debian/*.doc-base`
     - `debian/*.lintian-overrides`

### Changes
- Added better scope granularity for `debian/source/format`
- Fixed link to backuppc VCS tag in README
- Substantially improved semantic-version regex in `debian-common.sublime-syntax`
- Added syntax highlighting to `Standards-Version` in `debian-control.sublime-syntax`

## [1.2.0] - 06-02-2021

### Changes
- Updated screenshots in README
- Added link direct link to Packagecontrol in README
- Added some context-dependence to all syntax files (started in
[PR#1](https://github.com/barnumbirr/sublime-debian/pull/1)) by [michaelblyons](https://github.com/michaelblyons).

### Fixes
- Fields in `debian/control` are case-sensitive
- Removed version number in `messages/install.txt`

## [1.1.0] - 05-01-2021

### New
- Syntax highlighting added for the following Debian packaging file:
     - `debian/upstream/metadata`
     - `debian/NEWS`
     - `debian/*.templates`
- Changelog file added

### Changes
- Syntax file names renamed to lowercase
- File `debian-sourcepackage.sublime-syntax` renamed to `debian-source-control.sublime-syntax` following Debian naming convention

### Fixes
- Typo in README when referring to package name in manual installation step

## [1.0.0] - 03-01-2021

Initial release.

### New
- Syntax highlighting for the following Debian packaging file:
    -   `debian/source/format`
    -   `debian/changelog`
    -   `debian/compat`
    -   `debian/control`
    -   `debian/copyright`
    -   `debian/watch`
    -   `.dsc`
- Package uploaded to [Packagecontrol/Debian Syntax](https://packagecontrol.io/packages/Debian%20Syntax)
