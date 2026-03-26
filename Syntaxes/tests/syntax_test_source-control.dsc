# SYNTAX TEST "Packages/Debian Syntax/Syntaxes/debian-source-control.sublime-syntax"

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

Binary: backuppc, libfoo-dev
#^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#     ^ punctuation.separator.mapping.key-value.debian.source.control
#       ^^^^^^^^ support.module.debian

Architecture: any
#^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#           ^ punctuation.separator.mapping.key-value.debian.source.control
#             ^^^ constant.other.architecture.debian

Version: 4.4.0-2
#^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#      ^ punctuation.separator.mapping.key-value.debian.source.control
#       ^^^^^^^^ meta.mapping.value.debian.source.control
#        ^^^^^^^ meta.number.version.debian
#        ^ constant.numeric.integer.decimal.debian

Standards-Version: 4.5.1
#^^^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#                ^ punctuation.separator.mapping.key-value.debian.source.control

Maintainer: Debian BackupPC Team <team+pkg-backuppc@tracker.debian.org>
#^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#         ^ punctuation.separator.mapping.key-value.debian.source.control
#                                ^ punctuation.definition.reference.email.begin.debian

Homepage: https://backuppc.github.io/backuppc/
#^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#       ^ punctuation.separator.mapping.key-value.debian.source.control
#         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.debian

# Test Build-Depends header keyword
Build-Depends: debhelper-compat (= 13)
#^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#            ^ punctuation.separator.mapping.key-value.debian.source.control
#              ^^^^^^^^^^^^^^^ support.module.debian
#                               ^ punctuation.section.group.begin.debian.control
#                                ^ keyword.operator.comparison.debian.control
#                                  ^^ meta.number.version.debian

# Test Build-Depends continuation values (assertions on last line only)
Build-Depends: debhelper-compat (= 13),
 iputils-ping | inetutils-ping,
 libbackuppc-xs-perl (>= 0.62)
#^^^^^^^^^^^^^^^^^^ support.module.debian

Build-Conflicts: foo-broken
#^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#              ^ punctuation.separator.mapping.key-value.debian.source.control
#                ^^^^^^^^^^ support.module.debian

# Test Checksums-Sha256 header keyword
Checksums-Sha256:
#^^^^^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#               ^ punctuation.separator.mapping.key-value.debian.source.control

# Test Checksums-Sha256 continuation values (assertions on last line only)
Checksums-Sha256:
 a1b2c3d4e5f6a1b2c3d4e5f6a1b2c3d4 12345 backuppc_4.4.0.orig.tar.gz
 abcdef012345abcdef012345abcdef01 67890 backuppc_4.4.0-2.debian.tar.xz
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian

# Test Package-List header keyword
Package-List:
#^^^^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#           ^ punctuation.separator.mapping.key-value.debian.source.control

# Test Package-List continuation values (assertions on last line only)
Package-List:
 backuppc deb section=utils priority=optional arch=amd64,arm64
#^^^^^^^^ support.module.debian
#             ^^^^^^^ variable.parameter.debian.source.control
#                    ^ punctuation.separator.mapping.key-value.debian.source.control
#                     ^^^^^ string.unquoted.debian.source.control
#                           ^^^^^^^^ variable.parameter.debian.source.control
#                                   ^ punctuation.separator.mapping.key-value.debian.source.control
#                                    ^^^^^^^^ string.unquoted.debian.source.control

# Test Files header keyword
Files:
#^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#    ^ punctuation.separator.mapping.key-value.debian.source.control

# Test Files continuation values (assertions on last line only)
Files:
 abc123def456abc123def456abc123ffee 12345 backuppc_4.4.0.orig.tar.gz
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian
#                                   ^^^^^ constant.numeric.integer.decimal.debian
#                                         ^^^^^^^^^^^^^^^^^^^^^^^^^^ string.unquoted.filename.debian

# This is a comment
# <- punctuation.definition.comment.debian
#^^^^^^^^^^^^^^^^^^^ comment.line.debian

Dgit: abc123def456 debian/4.4.0-2
#^^^ meta.mapping.key.debian keyword.control.debian.source.control
#   ^ punctuation.separator.mapping.key-value.debian.source.control
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.mapping.value.debian.source.control
#     ^^^^^^^^^^^^ constant.numeric.integer.hexadecimal.debian
#                  ^^^^^^^^^^^^^^ string.unquoted.debian.source.control

Testsuite: autopkgtest
#^^^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#        ^ punctuation.separator.mapping.key-value.debian.source.control
#         ^^^^^^^^^^^^ meta.mapping.value.debian.source.control

Vcs-Git: https://salsa.debian.org/backuppc-team/backuppc.git
#^^^^^^ meta.mapping.key.debian keyword.control.debian.source.control
#      ^ punctuation.separator.mapping.key-value.debian.source.control
#        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ markup.underline.link.debian
