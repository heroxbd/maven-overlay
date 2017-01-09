# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-appengine-1.21.0.pom --download-uri http://central.maven.org/maven2/com/google/api-client/google-api-client-appengine/1.21.0/google-api-client-appengine-1.21.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-api-client-appengine-1.21.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Sonatype helps open source projects to set up Maven repositories on https://oss.sonatype.org/"
HOMEPAGE="https://github.com/google/google-api-java-client/google-api-client-appengine"
SRC_URI="http://central.maven.org/maven2/com/google/api-client/google-api-client-appengine/1.21.0/google-api-client-appengine-1.21.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.api-client:google-api-client-appengine:1.21.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-appengine-1.21.0.pom
# com.google.api-client:google-api-client:1.21.0 -> >=app-maven/google-api-client-1.22.0:0
# com.google.api-client:google-api-client-servlet:1.21.0 -> >=app-maven/google-api-client-servlet-1.21.0:0
# com.google.http-client:google-http-client-appengine:1.21.0 -> >=app-maven/google-http-client-appengine-1.21.0:0
# com.google.oauth-client:google-oauth-client-appengine:1.21.0 -> >=app-maven/google-oauth-client-appengine-1.21.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-appengine-1.21.0.pom
CDEPEND="
	>=app-maven/google-api-client-1.22.0:0
	>=app-maven/google-api-client-servlet-1.21.0:0
	>=app-maven/google-http-client-appengine-1.21.0:0
	>=app-maven/google-oauth-client-appengine-1.21.0:0"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-api-client-appengine-1.21.0.pom
# com.google.appengine:appengine-api-1.0-sdk:1.7.7 -> >=app-maven/appengine-api-bin-1.7.7:1.0-sdk
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/appengine-api-bin-1.7.7:1.0-sdk"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="google-api-client,google-api-client-servlet,google-http-client-appengine,google-oauth-client-appengine"
JAVA_CLASSPATH_EXTRA="appengine-api-bin-1.0-sdk"
