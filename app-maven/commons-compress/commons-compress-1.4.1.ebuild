# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-compress-1.4.1.pom --download-uri http://central.maven.org/maven2/org/apache/commons/commons-compress/1.4.1/commons-compress-1.4.1-sources.jar --slot 0 --keywords "~amd64" --ebuild commons-compress-1.4.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Apache Commons Compress software defines an API for working with compression and archive formats.
These include: bzip2, gzip, pack200, xz and ar, cpio, jar, tar, zip, dump."
HOMEPAGE="http://commons.apache.org/compress/"
SRC_URI="http://central.maven.org/maven2/org/apache/commons/commons-compress/1.4.1/commons-compress-1.4.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.apache.commons:commons-compress:1.4.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-compress-1.4.1.pom
# org.tukaani:xz:1.0 -> >=app-maven/xz-1.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/commons-compress-1.4.1.pom
CDEPEND="
	>=app-maven/xz-1.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="xz"
JAVA_ENCODING="iso-8859-1"
