# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/aopalliance-repackaged-2.4.0-b34.pom --download-uri http://central.maven.org/maven2/org/glassfish/hk2/external/aopalliance-repackaged/2.4.0-b34/aopalliance-repackaged-2.4.0-b34-sources.jar --slot 0 --keywords "~amd64" --ebuild aopalliance-repackaged-2.4.0_beta34.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Dependency Injection Kernel"
HOMEPAGE="https://hk2.java.net/external/aopalliance-repackaged"
SRC_URI="http://central.maven.org/maven2/org/glassfish/hk2/external/aopalliance-repackaged/2.4.0-b34/aopalliance-repackaged-2.4.0-b34-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.glassfish.hk2.external:aopalliance-repackaged:2.4.0-b34"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/aopalliance-repackaged-2.4.0-b34.pom
# aopalliance:aopalliance:1.0 -> >=app-maven/aopalliance-1.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/aopalliance-repackaged-2.4.0-b34.pom
CDEPEND="
	>=app-maven/aopalliance-1.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="aopalliance"
