# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/selenium-api-2.35.0.pom --download-uri http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-api/2.35.0/selenium-api-2.35.0-sources.jar --slot 0 --keywords "~amd64" --ebuild selenium-api-2.35.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Browser automation framework"
HOMEPAGE="http://selenium.googlecode.com/selenium-api/"
SRC_URI="http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-api/2.35.0/selenium-api-2.35.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.seleniumhq.selenium:selenium-api:2.35.0"

# Common dependencies
# POM: ../poms/selenium-api-2.35.0.pom
# com.google.guava:guava:14.0 -> >=dev-java/guava-14.0.1:14
# org.json:json:20080701 -> >=dev-java/json-20150729:0
# POM: ../poms/selenium-api-2.35.0.pom
CDEPEND="
	>=dev-java/guava-14.0.1:14
	>=dev-java/json-20150729:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="guava-14,json"
