# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jsch-0.1.42.pom --download-uri http://central.maven.org/maven2/com/jcraft/jsch/0.1.42/jsch-0.1.42-sources.jar --slot 0 --keywords "~amd64" --ebuild jsch-0.1.42.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JSch is a pure Java implementation of SSH2"
HOMEPAGE="http://www.jcraft.com/jsch/"
SRC_URI="http://central.maven.org/maven2/com/jcraft/jsch/0.1.42/jsch-0.1.42-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.jcraft:jsch:0.1.42"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jsch-0.1.42.pom
# com.jcraft:jzlib:1.0.7 -> >=dev-java/jzlib-1.1.3:1.1.3
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jsch-0.1.42.pom
CDEPEND="
	>=dev-java/jzlib-1.1.3:1.1.3"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jzlib-1.1.3"
