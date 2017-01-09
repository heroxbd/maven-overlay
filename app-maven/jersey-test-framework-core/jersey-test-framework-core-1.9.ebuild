# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-test-framework-core-1.9.pom --download-uri http://central.maven.org/maven2/com/sun/jersey/jersey-test-framework/jersey-test-framework-core/1.9/jersey-test-framework-core-1.9-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-test-framework-core-1.9.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey is the open source (under dual CDDL+GPL license) JAX-RS (JSR 311)
        production quality Reference Implementation for building
        RESTful Web services."
HOMEPAGE="https://jersey.java.net/jersey-test-framework/jersey-test-framework-core/"
SRC_URI="http://central.maven.org/maven2/com/sun/jersey/jersey-test-framework/jersey-test-framework-core/1.9/jersey-test-framework-core-1.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.sun.jersey.jersey-test-framework:jersey-test-framework-core:1.9"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-test-framework-core-1.9.pom
# com.sun.jersey:jersey-client:1.9 -> >=app-maven/jersey-client-1.9:0
# com.sun.jersey:jersey-server:1.9 -> >=app-maven/jersey-server-1.9:0
# javax.servlet:javax.servlet-api:3.0.1 -> >=app-maven/javax-servlet-api-3.1.0:0
# junit:junit:4.8.2 -> >=dev-java/junit-4.12:4
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-test-framework-core-1.9.pom
CDEPEND="
	>=app-maven/javax-servlet-api-3.1.0:0
	>=app-maven/jersey-client-1.9:0
	>=app-maven/jersey-server-1.9:0
	>=dev-java/junit-4.12:4"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jersey-client,jersey-server,javax-servlet-api,junit-4"
JAVA_TESTING_FRAMEWORK="junit"
