# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/selenium-remote-driver-2.35.0.pom --download-uri http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-remote-driver/2.35.0/selenium-remote-driver-2.35.0-sources.jar --slot 0 --keywords "~amd64" --ebuild selenium-remote-driver-2.35.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Browser automation framework"
HOMEPAGE="http://selenium.googlecode.com/selenium-remote-driver/"
SRC_URI="http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-remote-driver/2.35.0/selenium-remote-driver-2.35.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.seleniumhq.selenium:selenium-remote-driver:2.35.0"

# Common dependencies
# POM: ../poms/selenium-remote-driver-2.35.0.pom
# cglib:cglib-nodep:2.1_3 -> >=app-maven/cglib-nodep-2.2.2:0
# com.google.guava:guava:14.0 -> >=dev-java/guava-14.0.1:14
# net.java.dev.jna:jna:3.4.0 -> >=app-maven/jna-3.4.0:0
# net.java.dev.jna:platform:3.4.0 -> >=app-maven/platform-3.4.0:0
# org.apache.commons:commons-exec:1.1 -> >=app-maven/commons-exec-1.1:0
# org.apache.httpcomponents:httpclient:4.2.1 -> >=dev-java/httpcomponents-client-4.5:4.5
# org.json:json:20080701 -> >=dev-java/json-20150729:0
# org.seleniumhq.selenium:selenium-api:2.35.0 -> >=app-maven/selenium-api-2.35.0:0
# POM: ../poms/selenium-remote-driver-2.35.0.pom
CDEPEND="
	>=app-maven/cglib-nodep-2.2.2:0
	>=app-maven/commons-exec-1.1:0
	>=app-maven/jna-3.4.0:0
	>=app-maven/platform-3.4.0:0
	>=app-maven/selenium-api-2.35.0:0
	>=dev-java/guava-14.0.1:14
	>=dev-java/httpcomponents-client-4.5:4.5
	>=dev-java/json-20150729:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="cglib-nodep,guava-14,jna,platform,commons-exec,httpcomponents-client-4.5,json,selenium-api"
