# SYNTAX TEST "Packages/Debian Syntax/Syntaxes/debian-source-control.sublime-syntax"

# This is a comment
# <- punctuation.definition.comment.debian
#^^^^^^^^^^^^^^^^^^^ comment.line.debian

-----BEGIN PGP SIGNED MESSAGE-----
# <- punctuation.definition.section.begin.debian
#    ^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.section.debian
#                            ^^^^^ punctuation.definition.section.end.debian
Hash: SHA512
#^^^ meta.mapping.key.debian keyword.control.debian
#   ^ punctuation.separator.mapping.key-value.debian
#     ^^^^^^ support.constant.debian

Format: 3.0 (quilt)
#^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#     ^ punctuation.separator.mapping.key-value.debian.source.control
#      ^^^^^^^^^^^^^ meta.mapping.value.debian.source.control
#       ^^^ meta.number.version.debian
#           ^ punctuation.section.group.begin.debian.source.control
#            ^^^^^ keyword.control.debian.source.control
#                 ^ punctuation.section.group.end.debian.source.control
Source: backuppc
#^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#     ^ punctuation.separator.mapping.key-value.debian.source.control
#      ^^^^^^^^^ meta.mapping.value.debian.source.control
#       ^^^^^^^^ support.module.debian
Binary: backuppc
#^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#     ^ punctuation.separator.mapping.key-value.debian.source.control
#       ^^^^^^^^ support.module.debian
Architecture: any
#^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#           ^ punctuation.separator.mapping.key-value.debian.source.control
#            ^^^^ meta.mapping.value.debian.source.control
#             ^^^ constant.other.architecture.debian
Version: 4.4.0-2
#^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#      ^ punctuation.separator.mapping.key-value.debian.source.control
#       ^^^^^^^^^ meta.mapping.value.debian.source.control
#        ^^^^^^^ meta.number.version.debian
#        ^ constant.numeric.integer.decimal.debian
#         ^ punctuation.separator.sequence.debian
#          ^ constant.numeric.integer.decimal.debian
#           ^ punctuation.separator.sequence.debian
#            ^ constant.numeric.integer.decimal.debian
#             ^ punctuation.separator.sequence.debian
#              ^ string.unquoted.debian
Origin: debian
#^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#     ^ punctuation.separator.mapping.key-value.debian.source.control
#      ^^^^^^^ meta.mapping.value.debian.source.control
Description: high-performance backup system
#^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#          ^ punctuation.separator.mapping.key-value.debian.source.control
#           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping.value.debian.source.control
Maintainer: Debian BackupPC Team <team+pkg-backuppc@tracker.debian.org>
#^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#         ^ punctuation.separator.mapping.key-value.debian.source.control
#                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.reference.email.debian
#                                ^ punctuation.definition.reference.email.begin.debian
#                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ entity.name.reference.email.debian
#                                                  ^ punctuation.separator.email.debian
#                                                          ^ punctuation.separator.domain.debian
#                                                                 ^ punctuation.separator.domain.debian
#                                                                     ^ punctuation.definition.reference.email.end.debian
Uploaders: Tobias Frost <tobi@debian.org>,
#^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#        ^ punctuation.separator.mapping.key-value.debian.source.control
#                       ^^^^^^^^^^^^^^^^^ meta.reference.email.debian
           Axel Beckert <abe@debian.org>
#                       ^^^^^^^^^^^^^^^^ meta.reference.email.debian
Homepage: https://backuppc.github.io/backuppc/
#^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#       ^ punctuation.separator.mapping.key-value.debian.source.control
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.debian
Standards-Version: 4.5.1
#^^^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#                ^ punctuation.separator.mapping.key-value.debian.source.control
#                  ^^^^^ meta.number.version.debian
Vcs-Browser: https://salsa.debian.org/debian/backuppc
#^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#          ^ punctuation.separator.mapping.key-value.debian.source.control
#            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.debian
Vcs-Git: https://salsa.debian.org/debian/backuppc.git
#^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#      ^ punctuation.separator.mapping.key-value.debian.source.control
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.debian
Testsuite: autopkgtest
#^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#        ^ punctuation.separator.mapping.key-value.debian.source.control
#         ^^^^^^^^^^^^ meta.mapping.value.debian.source.control
Testsuite-Triggers: perl
#^^^^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#                 ^ punctuation.separator.mapping.key-value.debian.source.control
#                   ^^^^ support.module.debian
Dgit: abc123def456789 debian/4.4.0-2
#^^^ meta.mapping.key.debian keyword.control.debian.source.control
#   ^ punctuation.separator.mapping.key-value.debian.source.control
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping.value.debian.source.control
#     ^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian
#                     ^^^^^^^^^^^^^^ string.unquoted.debian.source.control
Build-Depends: debhelper-compat (= 13),
#^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#            ^ punctuation.separator.mapping.key-value.debian.source.control
#              ^^^^^^^^^^^^^^^ support.module.debian
#                               ^ punctuation.section.group.begin.debian.control
#                                ^ keyword.operator.comparison.debian.control
#                                  ^^ meta.number.version.debian
#                                    ^ punctuation.section.group.end.debian.control
#                                     ^ punctuation.separator.sequence.debian
               libbackuppc-xs-perl (>= 0.62),
#              ^^^^^^^^^^^^^^^^^^ support.module.debian
#                                  ^ punctuation.section.group.begin.debian.control
#                                   ^^ keyword.operator.comparison.debian.control
#                                      ^^^^ meta.number.version.debian
#                                          ^ punctuation.section.group.end.debian.control
               perl
#              ^^^^ support.module.debian
Build-Depends-Arch: libsystemd-dev
#^^^^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#                 ^ punctuation.separator.mapping.key-value.debian.source.control
#                   ^^^^^^^^^^^^^ support.module.debian
Build-Depends-Indep: libhtml-parser-perl
#^^^^^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#                  ^ punctuation.separator.mapping.key-value.debian.source.control
#                    ^^^^^^^^^^^^^^^^^^ support.module.debian
Build-Conflicts: libfoo-broken-dev
#^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#              ^ punctuation.separator.mapping.key-value.debian.source.control
#                ^^^^^^^^^^^^^^^^^ support.module.debian
Build-Conflicts-Arch: libbroken-dev
#^^^^^^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#                   ^ punctuation.separator.mapping.key-value.debian.source.control
#                     ^^^^^^^^^^^^^ support.module.debian
Build-Conflicts-Indep: libconflict-dev
#^^^^^^^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#                    ^ punctuation.separator.mapping.key-value.debian.source.control
#                      ^^^^^^^^^^^^^^^ support.module.debian
Vcs-Svn: svn://svn.debian.org/svn/backuppc/trunk
#^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#      ^ punctuation.separator.mapping.key-value.debian.source.control
Vcs-Hg: https://hg.example.com/backuppc
#^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#     ^ punctuation.separator.mapping.key-value.debian.source.control
#       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.debian
Vcs-Bzr: https://code.launchpad.net/backuppc
#^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#      ^ punctuation.separator.mapping.key-value.debian.source.control
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.debian
Vcs-Cvs: :pserver:anonymous@cvs.example.com:/cvsroot
#^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#      ^ punctuation.separator.mapping.key-value.debian.source.control
Vcs-Darcs: https://darcs.example.com/backuppc
#^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#        ^ punctuation.separator.mapping.key-value.debian.source.control
#          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.debian
Vcs-Mtn: mtn.example.com?net.example.backuppc
#^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#      ^ punctuation.separator.mapping.key-value.debian.source.control
Vcs-Arch: https://arch.example.com/backuppc
#^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#       ^ punctuation.separator.mapping.key-value.debian.source.control
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.debian
Package-List:
#^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#           ^ punctuation.separator.mapping.key-value.debian.source.control
 backuppc deb utils optional arch=any
#^^^^^^^^ support.module.debian
#                            ^^^^ variable.parameter.debian.source.control
#                                ^ punctuation.separator.mapping.key-value.debian.source.control

# Test Package-List with section= and priority= key-value pairs
Package-List:
 backuppc deb section=utils priority=optional arch=amd64,arm64
#^^^^^^^^ support.module.debian
#             ^^^^^^^ variable.parameter.debian.source.control
#                    ^ punctuation.separator.mapping.key-value.debian.source.control
#                     ^^^^^ support.constant.section.debian
#                           ^^^^^^^^ variable.parameter.debian.source.control
#                                   ^ punctuation.separator.mapping.key-value.debian.source.control
#                                    ^^^^^^^^ support.constant.priority.debian
#                                             ^^^^ variable.parameter.debian.source.control
#                                                 ^ punctuation.separator.mapping.key-value.debian.source.control
#                                                  ^^^^^^^^^^^ string.unquoted.debian.source.control
Checksums-Sha1:
#^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#             ^ punctuation.separator.mapping.key-value.debian.source.control
 da39a3ee5e6b4b0d3255bfef95601890afd80709 12345 backuppc_4.4.0.orig.tar.gz
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian
#                                         ^^^^^ constant.numeric.integer.decimal.debian
#                                               ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.filename.debian
 abc123def456789 5678 backuppc_4.4.0-2.debian.tar.xz
#^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian
#                ^^^^ constant.numeric.integer.decimal.debian
#                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.filename.debian
Checksums-Sha256:
#^^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#               ^ punctuation.separator.mapping.key-value.debian.source.control
 e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855 12345 backuppc_4.4.0.orig.tar.gz
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian
#                                                                 ^^^^^ constant.numeric.integer.decimal.debian
#                                                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.filename.debian
 abc123def456789abc123def456789abc123def456 5678 backuppc_4.4.0-2.debian.tar.xz
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian
Files:
#^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#    ^ punctuation.separator.mapping.key-value.debian.source.control
 d41d8cd98f00b204e9800998ecf8427e 12345 backuppc_4.4.0.orig.tar.gz
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian
#                                 ^^^^^ constant.numeric.integer.decimal.debian
#                                       ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.filename.debian
 abc123def456789 5678 backuppc_4.4.0-2.debian.tar.xz
#^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian

-----BEGIN PGP SIGNATURE-----
# <- punctuation.definition.section.begin.debian
#    ^^^^^^^^^^^^^^^^^^^ entity.name.section.debian
#                       ^^^^^ punctuation.definition.section.end.debian

iQIzBAEBCgAdFiEE...
=abcd
-----END PGP SIGNATURE-----
# <- punctuation.definition.section.begin.debian
#    ^^^^^^^^^^^^^^^^^ entity.name.section.debian
#                     ^^^^^ punctuation.definition.section.end.debian

# Regression: catch-all for unknown fields
X-Custom: something
#^^^^^^^ meta.mapping.key.debian keyword.control.debian
#       ^ punctuation.separator.mapping.key-value.debian
#        ^^^^^^^^^^ meta.mapping.value.debian

# Regression: invalid.illegal for Format field with unknown source format
Format: 3.0 (dpkg)
#       ^^^ meta.number.version.debian
#           ^ punctuation.section.group.begin.debian.source.control
#            ^^^^ invalid.illegal.value.debian.source.control
#                ^ punctuation.section.group.end.debian.source.control
