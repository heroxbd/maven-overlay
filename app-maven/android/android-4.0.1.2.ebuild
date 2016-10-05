# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/android-4.0.1.2.pom --download-uri http://central.maven.org/maven2/com/google/android/android/4.0.1.2/android-4.0.1.2-sources.jar --slot 0 --keywords "~amd64" --ebuild android-4.0.1.2.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A library jar that provides APIs for Applications written for the Google Android Platform."
HOMEPAGE="http://source.android.com/"
SRC_URI="http://central.maven.org/maven2/com/google/android/android/4.0.1.2/android-4.0.1.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="com.google.android:android:4.0.1.2"

# Common dependencies
# POM: ../poms/android-4.0.1.2.pom
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# org.apache.httpcomponents:httpclient:4.0.1 -> >=dev-java/httpcomponents-client-4.5:4.5
# org.json:json:20080701 -> >=dev-java/json-20150729:0
# org.khronos:opengl-api:2.1.1 -> >=app-maven/opengl-api-2.1.1:0
# xerces:xmlParserAPIs:2.6.2 -> >=dev-java/xerces-2.11.0:2
# xpp3:xpp3:1.1.4c -> >=app-maven/xpp3-1.1.4c:0
# POM: ../poms/android-4.0.1.2.pom
CDEPEND="
	>=app-maven/opengl-api-2.1.1:0
	>=app-maven/xpp3-1.1.4c:0
	>=dev-java/commons-logging-1.2:0
	>=dev-java/httpcomponents-client-4.5:4.5
	>=dev-java/json-20150729:0
	>=dev-java/xerces-2.11.0:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-logging,httpcomponents-client-4.5,json,opengl-api,xerces-2,xpp3"
