-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Format: 3.0 (quilt)
Source: backuppc
Binary: backuppc
Architecture: any
Version: 4.4.0-2
Origin: debian
Description: high-performance backup system
Maintainer: Debian BackupPC Team <team+pkg-backuppc@tracker.debian.org>
Uploaders: Tobias Frost <tobi@debian.org>,
           Axel Beckert <abe@debian.org>
Homepage: https://backuppc.github.io/backuppc/
Standards-Version: 4.5.1
Vcs-Browser: https://salsa.debian.org/debian/backuppc
Vcs-Git: https://salsa.debian.org/debian/backuppc.git
Testsuite: autopkgtest
Testsuite-Triggers: perl
Dgit: abc123def456789 debian/4.4.0-2
Build-Depends: debhelper-compat (= 13),
               libbackuppc-xs-perl (>= 0.62),
               perl
Build-Depends-Arch: libsystemd-dev
Build-Depends-Indep: libhtml-parser-perl
Build-Conflicts: libfoo-broken-dev
Build-Conflicts-Arch: libbroken-dev
Build-Conflicts-Indep: libconflict-dev
Vcs-Svn: svn://svn.debian.org/svn/backuppc/trunk
Vcs-Hg: https://hg.example.com/backuppc
Vcs-Bzr: https://code.launchpad.net/backuppc
Vcs-Cvs: :pserver:anonymous@cvs.example.com:/cvsroot
Vcs-Darcs: https://darcs.example.com/backuppc
Vcs-Mtn: mtn.example.com?net.example.backuppc
Vcs-Arch: https://arch.example.com/backuppc
Package-List:
 backuppc deb utils optional arch=any
Checksums-Sha1:
 da39a3ee5e6b4b0d3255bfef95601890afd80709 12345 backuppc_4.4.0.orig.tar.gz
 abc123def456789 5678 backuppc_4.4.0-2.debian.tar.xz
Checksums-Sha256:
 e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855 12345 backuppc_4.4.0.orig.tar.gz
 abc123def456789abc123def456789abc123def456 5678 backuppc_4.4.0-2.debian.tar.xz
Files:
 d41d8cd98f00b204e9800998ecf8427e 12345 backuppc_4.4.0.orig.tar.gz
 abc123def456789 5678 backuppc_4.4.0-2.debian.tar.xz

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE...
=abcd
-----END PGP SIGNATURE-----
