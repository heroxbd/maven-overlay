# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-server-1.9.pom --download-uri http://central.maven.org/maven2/com/sun/jersey/jersey-server/1.9/jersey-server-1.9-sources.jar --slot 0 --keywords "~amd64" --ebuild jersey-server-1.9.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Jersey is the open source (under dual CDDL+GPL license) JAX-RS (JSR 311)
        production quality Reference Implementation for building
        RESTful Web services."
HOMEPAGE="https://jersey.java.net/jersey-server/"
SRC_URI="http://central.maven.org/maven2/com/sun/jersey/jersey-server/1.9/jersey-server-1.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.sun.jersey:jersey-server:1.9"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-server-1.9.pom
# asm:asm:3.1 -> >=app-maven/asm-3.1:0
# com.sun.jersey:jersey-core:1.9 -> >=app-maven/jersey-core-1.9:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-server-1.9.pom
CDEPEND="
	>=app-maven/asm-3.1:0
	>=app-maven/jersey-core-1.9:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jersey-server-1.9.pom
# ant:ant:1.6.5 -> >=dev-java/ant-core-1.9.2:0
# javax.mail:mail:1.4 -> >=dev-java/oracle-javamail-1.5.5:0
# javax.persistence:persistence-api:1.0 -> >=app-maven/persistence-api-1.0:0
# javax.servlet:javax.servlet-api:3.0.1 -> >=app-maven/javax-servlet-api-3.1.0:0
# javax.servlet:jsp-api:2.0 -> >=app-maven/jsp-api-bin-2.0:0
# javax.xml.bind:jaxb-api:2.1 -> >=app-maven/jaxb-api-2.1:0
# org.glassfish:javax.ejb:3.1 -> >=app-maven/javax-ejb-3.1:0
# org.jboss.weld:weld-osgi-bundle:1.1.0.Final -> >=app-maven/weld-osgi-bundle-1.1.33:0
# org.osgi:osgi_R4_core:1.0 -> >=app-maven/osgi-bin-1.0:R4_core
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/javax-ejb-3.1:0
	>=app-maven/javax-servlet-api-3.1.0:0
	>=app-maven/jaxb-api-2.1:0
	>=app-maven/jsp-api-bin-2.0:0
	>=app-maven/osgi-bin-1.0:R4_core
	>=app-maven/persistence-api-1.0:0
	>=app-maven/weld-osgi-bundle-1.1.33:0
	>=dev-java/ant-core-1.9.2:0
	>=dev-java/oracle-javamail-1.5.5:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="asm,jersey-core"
JAVA_CLASSPATH_EXTRA="ant-core,oracle-javamail,persistence-api,javax-servlet-api,jsp-api-bin,jaxb-api,javax-ejb,weld-osgi-bundle,osgi-bin-R4_core"
