# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-json-1.9.pom --download-uri http://central.maven.org/maven2/com/sun/jersey/jersey-json/1.9/jersey-json-1.9-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-json-1.9.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey is the open source (under dual CDDL+GPL license) JAX-RS (JSR 311)
        production quality Reference Implementation for building
        RESTful Web services."
HOMEPAGE="https://jersey.java.net/jersey-json/"
SRC_URI="http://central.maven.org/maven2/com/sun/jersey/jersey-json/1.9/jersey-json-1.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.sun.jersey:jersey-json:1.9"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-json-1.9.pom
# com.sun.jersey:jersey-core:1.9 -> >=app-maven/jersey-core-1.9:0
# com.sun.xml.bind:jaxb-impl:2.2.3-1 -> >=app-maven/jaxb-impl-2.2.3.1:0
# org.codehaus.jackson:jackson-core-asl:1.8.3 -> >=app-maven/jackson-core-asl-1.9.13:0
# org.codehaus.jackson:jackson-jaxrs:1.8.3 -> >=app-maven/jackson-jaxrs-1.8.3:0
# org.codehaus.jackson:jackson-mapper-asl:1.8.3 -> >=app-maven/jackson-mapper-asl-1.9.13:0
# org.codehaus.jackson:jackson-xc:1.8.3 -> >=app-maven/jackson-xc-1.8.3:0
# org.codehaus.jettison:jettison:1.1 -> >=dev-java/jettison-1.3.7:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-json-1.9.pom
CDEPEND="
	>=app-maven/jackson-core-asl-1.9.13:0
	>=app-maven/jackson-jaxrs-1.8.3:0
	>=app-maven/jackson-mapper-asl-1.9.13:0
	>=app-maven/jackson-xc-1.8.3:0
	>=app-maven/jaxb-impl-2.2.3.1:0
	>=app-maven/jersey-core-1.9:0
	>=dev-java/jettison-1.3.7:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jersey-core,jaxb-impl,jackson-core-asl,jackson-jaxrs,jackson-mapper-asl,jackson-xc,jettison"
