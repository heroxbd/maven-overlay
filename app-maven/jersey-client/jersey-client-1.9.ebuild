# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-client-1.9.pom --download-uri http://central.maven.org/maven2/com/sun/jersey/jersey-client/1.9/jersey-client-1.9-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-client-1.9.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey is the open source (under dual CDDL+GPL license) JAX-RS (JSR 311)
        production quality Reference Implementation for building
        RESTful Web services."
HOMEPAGE="https://jersey.java.net/jersey-client/"
SRC_URI="http://central.maven.org/maven2/com/sun/jersey/jersey-client/1.9/jersey-client-1.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.sun.jersey:jersey-client:1.9"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-client-1.9.pom
# com.sun.jersey:jersey-core:1.9 -> >=app-maven/jersey-core-1.9:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-client-1.9.pom
CDEPEND="
	>=app-maven/jersey-core-1.9:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-client-1.9.pom
# org.osgi:osgi_R4_core:1.0 -> >=app-maven/osgi-bin-1.0:R4_core
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/osgi-bin-1.0:R4_core"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jersey-core"
JAVA_CLASSPATH_EXTRA="osgi-bin-R4_core"
