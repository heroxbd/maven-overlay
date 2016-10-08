# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-java-2.35.0.pom --download-uri http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-java/2.35.0/selenium-java-2.35.0-sources.jar --slot 0 --keywords "~amd64" --ebuild selenium-java-2.35.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Browser automation framework"
HOMEPAGE="http://selenium.googlecode.com/selenium-java/"
SRC_URI="http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-java/2.35.0/selenium-java-2.35.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.seleniumhq.selenium:selenium-java:2.35.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-java-2.35.0.pom
# junit:junit:4.11 -> >=dev-java/junit-4.12:4
# org.seleniumhq.selenium:selenium-android-driver:2.35.0 -> >=app-maven/selenium-android-driver-2.35.0:0
# org.seleniumhq.selenium:selenium-chrome-driver:2.35.0 -> >=app-maven/selenium-chrome-driver-2.35.0:0
# org.seleniumhq.selenium:selenium-firefox-driver:2.35.0 -> >=app-maven/selenium-firefox-driver-2.35.0:0
# org.seleniumhq.selenium:selenium-htmlunit-driver:2.35.0 -> >=app-maven/selenium-htmlunit-driver-2.35.0:0
# org.seleniumhq.selenium:selenium-ie-driver:2.35.0 -> >=app-maven/selenium-ie-driver-2.35.0:0
# org.seleniumhq.selenium:selenium-iphone-driver:2.35.0 -> >=app-maven/selenium-iphone-driver-2.35.0:0
# org.seleniumhq.selenium:selenium-safari-driver:2.35.0 -> >=app-maven/selenium-safari-driver-2.35.0:0
# org.seleniumhq.selenium:selenium-support:2.35.0 -> >=app-maven/selenium-support-2.35.0:0
# org.testng:testng:6.8 -> >=dev-java/testng-6.9.10:0
# org.webbitserver:webbit:0.4.14 -> >=app-maven/webbit-0.4.14:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-java-2.35.0.pom
CDEPEND="
	>=app-maven/selenium-android-driver-2.35.0:0
	>=app-maven/selenium-chrome-driver-2.35.0:0
	>=app-maven/selenium-firefox-driver-2.35.0:0
	>=app-maven/selenium-htmlunit-driver-2.35.0:0
	>=app-maven/selenium-ie-driver-2.35.0:0
	>=app-maven/selenium-iphone-driver-2.35.0:0
	>=app-maven/selenium-safari-driver-2.35.0:0
	>=app-maven/selenium-support-2.35.0:0
	>=app-maven/webbit-0.4.14:0
	>=dev-java/junit-4.12:4
	>=dev-java/testng-6.9.10:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="junit-4,selenium-android-driver,selenium-chrome-driver,selenium-firefox-driver,selenium-htmlunit-driver,selenium-ie-driver,selenium-iphone-driver,selenium-safari-driver,selenium-support,testng,webbit"
JAVA_TESTING_FRAMEWORK="junit"
