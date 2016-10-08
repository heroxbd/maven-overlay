# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-test-framework-grizzly2-1.9.pom --download-uri http://central.maven.org/maven2/com/sun/jersey/jersey-test-framework/jersey-test-framework-grizzly2/1.9/jersey-test-framework-grizzly2-1.9-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-test-framework-grizzly2-1.9.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey is the open source (under dual CDDL+GPL license) JAX-RS (JSR 311)
        production quality Reference Implementation for building
        RESTful Web services."
HOMEPAGE="https://jersey.java.net/jersey-test-framework/jersey-test-framework-grizzly2/"
SRC_URI="http://central.maven.org/maven2/com/sun/jersey/jersey-test-framework/jersey-test-framework-grizzly2/1.9/jersey-test-framework-grizzly2-1.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.sun.jersey.jersey-test-framework:jersey-test-framework-grizzly2:1.9"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-test-framework-grizzly2-1.9.pom
# com.sun.jersey:jersey-grizzly2:1.9 -> >=app-maven/jersey-grizzly2-1.9:0
# com.sun.jersey.jersey-test-framework:jersey-test-framework-core:1.9 -> >=app-maven/jersey-test-framework-core-1.9:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-test-framework-grizzly2-1.9.pom
CDEPEND="
	>=app-maven/jersey-grizzly2-1.9:0
	>=app-maven/jersey-test-framework-core-1.9:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jersey-grizzly2,jersey-test-framework-core"
