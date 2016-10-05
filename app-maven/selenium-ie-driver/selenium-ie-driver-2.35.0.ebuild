# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/selenium-ie-driver-2.35.0.pom --download-uri http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-ie-driver/2.35.0/selenium-ie-driver-2.35.0-sources.jar --slot 0 --keywords "~amd64" --ebuild selenium-ie-driver-2.35.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Browser automation framework"
HOMEPAGE="http://selenium.googlecode.com/selenium-ie-driver/"
SRC_URI="http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-ie-driver/2.35.0/selenium-ie-driver-2.35.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.seleniumhq.selenium:selenium-ie-driver:2.35.0"

# Common dependencies
# POM: ../poms/selenium-ie-driver-2.35.0.pom
# net.java.dev.jna:jna:3.4.0 -> >=app-maven/jna-3.4.0:0
# net.java.dev.jna:platform:3.4.0 -> >=app-maven/platform-3.4.0:0
# org.seleniumhq.selenium:selenium-remote-driver:2.35.0 -> >=app-maven/selenium-remote-driver-2.35.0:0
# POM: ../poms/selenium-ie-driver-2.35.0.pom
CDEPEND="
	>=app-maven/jna-3.4.0:0
	>=app-maven/platform-3.4.0:0
	>=app-maven/selenium-remote-driver-2.35.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jna,platform,selenium-remote-driver"
