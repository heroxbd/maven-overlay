# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-1.22.0.pom --download-uri http://central.maven.org/maven2/com/google/http-client/google-http-client/1.22.0/google-http-client-1.22.0-sources.jar --slot 0 --keywords "~amd64" --ebuild google-http-client-1.22.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Google HTTP Client Library for Java. Functionality that works on all supported Java platforms,
    including Java 5 (or higher) desktop (SE) and web (EE), Android, and Google App Engine."
HOMEPAGE="https://github.com/google/google-http-java-client/google-http-client"
SRC_URI="http://central.maven.org/maven2/com/google/http-client/google-http-client/1.22.0/google-http-client-1.22.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.http-client:google-http-client:1.22.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-1.22.0.pom
# com.google.code.findbugs:jsr305:1.3.9 -> >=app-maven/jsr305-bin-1.3.9:0
# org.apache.httpcomponents:httpclient:4.0.1 -> >=dev-java/httpcomponents-client-4.5:4.5
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-1.22.0.pom
CDEPEND="
	>=app-maven/jsr305-bin-1.3.9:0
	>=dev-java/httpcomponents-client-4.5:4.5"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/google-http-client-1.22.0.pom
# com.google.android:android:1.5_r4 -> >=app-maven/android-4.0.1.2:0
# com.google.guava:guava-jdk5:17.0 -> >=app-maven/guava-jdk5-17.0:0
# commons-codec:commons-codec:1.6 -> >=dev-java/commons-codec-1.7:0
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/android-4.0.1.2:0
	>=app-maven/guava-jdk5-17.0:0
	>=dev-java/commons-codec-1.7:0"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jsr305-bin,httpcomponents-client-4.5"
JAVA_CLASSPATH_EXTRA="android,guava-jdk5,commons-codec"
