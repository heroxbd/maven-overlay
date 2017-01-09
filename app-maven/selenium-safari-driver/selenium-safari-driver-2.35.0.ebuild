# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-safari-driver-2.35.0.pom --download-uri http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-safari-driver/2.35.0/selenium-safari-driver-2.35.0-sources.jar --slot 0 --keywords "~amd64" --ebuild selenium-safari-driver-2.35.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Browser automation framework"
HOMEPAGE="http://selenium.googlecode.com/selenium-safari-driver/"
SRC_URI="http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-safari-driver/2.35.0/selenium-safari-driver-2.35.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.seleniumhq.selenium:selenium-safari-driver:2.35.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-safari-driver-2.35.0.pom
# org.seleniumhq.selenium:selenium-remote-driver:2.35.0 -> >=app-maven/selenium-remote-driver-2.35.0:0
# org.webbitserver:webbit:0.4.14 -> >=app-maven/webbit-0.4.14:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-safari-driver-2.35.0.pom
CDEPEND="
	>=app-maven/selenium-remote-driver-2.35.0:0
	>=app-maven/webbit-0.4.14:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="selenium-remote-driver,webbit"
