# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-core-1.9.pom --download-uri http://central.maven.org/maven2/com/sun/jersey/jersey-core/1.9/jersey-core-1.9-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-core-1.9.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey is the open source (under dual CDDL+GPL license) JAX-RS (JSR 311)
        production quality Reference Implementation for building
        RESTful Web services."
HOMEPAGE="https://jersey.java.net/jersey-core/"
SRC_URI="http://central.maven.org/maven2/com/sun/jersey/jersey-core/1.9/jersey-core-1.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.sun.jersey:jersey-core:1.9"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-core-1.9.pom
# javax.mail:mail:1.4 -> >=dev-java/oracle-javamail-1.5.5:0
# javax.ws.rs:jsr311-api:1.1.1 -> >=app-maven/jsr311-api-1.1.1:0
# javax.xml.bind:jaxb-api:2.1 -> >=app-maven/jaxb-api-2.1:0
# org.osgi:osgi_R4_core:1.0 -> >=app-maven/osgi-bin-1.0:R4_core
DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/jaxb-api-2.1:0
	>=app-maven/jsr311-api-1.1.1:0
	>=app-maven/osgi-bin-1.0:R4_core
	>=dev-java/oracle-javamail-1.5.5:0"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_CLASSPATH_EXTRA="oracle-javamail,jsr311-api,jaxb-api,osgi-bin-R4_core"
