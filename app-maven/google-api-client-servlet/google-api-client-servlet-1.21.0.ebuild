# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-servlet-1.21.0.pom --download-uri http://central.maven.org/maven2/com/google/api-client/google-api-client-servlet/1.21.0/google-api-client-servlet-1.21.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-api-client-servlet-1.21.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="https://github.com/google/google-api-java-client/google-api-client-servlet"
SRC_URI="http://central.maven.org/maven2/com/google/api-client/google-api-client-servlet/1.21.0/google-api-client-servlet-1.21.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.api-client:google-api-client-servlet:1.21.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-servlet-1.21.0.pom
# com.google.api-client:google-api-client:1.21.0 -> >=app-maven/google-api-client-1.22.0:0
# com.google.oauth-client:google-oauth-client-servlet:1.21.0 -> >=app-maven/google-oauth-client-servlet-1.21.0:0
# javax.jdo:jdo2-api:2.3-eb -> >=app-maven/jdo2-api-2.3:0
# javax.servlet:servlet-api:2.5 -> >=app-maven/servlet-api-2.5:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-servlet-1.21.0.pom
CDEPEND="
	>=app-maven/google-api-client-1.22.0:0
	>=app-maven/google-oauth-client-servlet-1.21.0:0
	>=app-maven/jdo2-api-2.3:0
	>=app-maven/servlet-api-2.5:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-api-client,google-oauth-client-servlet,jdo2-api,servlet-api"
