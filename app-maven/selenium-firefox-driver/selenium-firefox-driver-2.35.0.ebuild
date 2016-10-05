# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/selenium-firefox-driver-2.35.0.pom --download-uri http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-firefox-driver/2.35.0/selenium-firefox-driver-2.35.0-sources.jar --slot 0 --keywords "~amd64" --ebuild selenium-firefox-driver-2.35.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Browser automation framework"
HOMEPAGE="http://selenium.googlecode.com/selenium-firefox-driver/"
SRC_URI="http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-firefox-driver/2.35.0/selenium-firefox-driver-2.35.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.seleniumhq.selenium:selenium-firefox-driver:2.35.0"

# Common dependencies
# POM: ../poms/selenium-firefox-driver-2.35.0.pom
# commons-io:commons-io:2.2 -> >=dev-java/commons-io-2.4:1
# org.apache.commons:commons-exec:1.1 -> >=app-maven/commons-exec-1.1:0
# org.seleniumhq.selenium:selenium-remote-driver:2.35.0 -> >=app-maven/selenium-remote-driver-2.35.0:0
# POM: ../poms/selenium-firefox-driver-2.35.0.pom
CDEPEND="
	>=app-maven/commons-exec-1.1:0
	>=app-maven/selenium-remote-driver-2.35.0:0
	>=dev-java/commons-io-2.4:1"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-io-1,commons-exec,selenium-remote-driver"
