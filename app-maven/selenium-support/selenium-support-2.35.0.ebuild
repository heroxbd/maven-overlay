# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-support-2.35.0.pom --download-uri http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-support/2.35.0/selenium-support-2.35.0-sources.jar --slot 0 --keywords "~amd64" --ebuild selenium-support-2.35.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Browser automation framework"
HOMEPAGE="http://selenium.googlecode.com/selenium-support/"
SRC_URI="http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-support/2.35.0/selenium-support-2.35.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.seleniumhq.selenium:selenium-support:2.35.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-support-2.35.0.pom
# junit:junit:4.11 -> >=dev-java/junit-4.12:4
# org.hamcrest:hamcrest-all:1.3 -> >=app-maven/hamcrest-all-1.3:0
# org.seleniumhq.selenium:selenium-api:2.35.0 -> >=app-maven/selenium-api-2.35.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-support-2.35.0.pom
CDEPEND="
	>=app-maven/hamcrest-all-1.3:0
	>=app-maven/selenium-api-2.35.0:0
	>=dev-java/junit-4.12:4"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="junit-4,hamcrest-all,selenium-api"
JAVA_TESTING_FRAMEWORK="junit"
