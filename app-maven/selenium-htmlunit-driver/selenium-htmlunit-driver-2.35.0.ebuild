# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-htmlunit-driver-2.35.0.pom --download-uri http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-htmlunit-driver/2.35.0/selenium-htmlunit-driver-2.35.0-sources.jar --slot 0 --keywords "~amd64" --ebuild selenium-htmlunit-driver-2.35.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Browser automation framework"
HOMEPAGE="http://selenium.googlecode.com/selenium-htmlunit-driver/"
SRC_URI="http://central.maven.org/maven2/org/seleniumhq/selenium/selenium-htmlunit-driver/2.35.0/selenium-htmlunit-driver-2.35.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.seleniumhq.selenium:selenium-htmlunit-driver:2.35.0"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-htmlunit-driver-2.35.0.pom
# net.sourceforge.htmlunit:htmlunit:2.12 -> >=app-maven/htmlunit-2.12:0
# org.apache.httpcomponents:httpclient:4.2.1 -> >=dev-java/httpcomponents-client-4.5:4.5
# org.seleniumhq.selenium:selenium-remote-driver:2.35.0 -> >=app-maven/selenium-remote-driver-2.35.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/selenium-htmlunit-driver-2.35.0.pom
CDEPEND="
	>=app-maven/htmlunit-2.12:0
	>=app-maven/selenium-remote-driver-2.35.0:0
	>=dev-java/httpcomponents-client-4.5:4.5"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="htmlunit,httpcomponents-client-4.5,selenium-remote-driver"
