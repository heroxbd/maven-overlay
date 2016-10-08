# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htmlunit-2.12.pom --download-uri http://central.maven.org/maven2/net/sourceforge/htmlunit/htmlunit/2.12/htmlunit-2.12-sources.jar --slot 0 --keywords "~amd64" --ebuild htmlunit-2.12.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="A headless browser intended for use in testing web-based applications."
HOMEPAGE="http://htmlunit.sourceforge.net"
SRC_URI="http://central.maven.org/maven2/net/sourceforge/htmlunit/htmlunit/2.12/htmlunit-2.12-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="net.sourceforge.htmlunit:htmlunit:2.12"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htmlunit-2.12.pom
# commons-codec:commons-codec:1.7 -> >=dev-java/commons-codec-1.7:0
# commons-collections:commons-collections:3.2.1 -> >=dev-java/commons-collections-3.2.1:0
# commons-io:commons-io:2.4 -> >=dev-java/commons-io-2.4:1
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# net.sourceforge.cssparser:cssparser:0.9.9 -> >=app-maven/cssparser-0.9.9:0
# net.sourceforge.htmlunit:htmlunit-core-js:2.12 -> >=app-maven/htmlunit-core-js-2.12:0
# net.sourceforge.nekohtml:nekohtml:1.9.18 -> >=app-maven/nekohtml-1.9.18:0
# org.apache.commons:commons-lang3:3.1 -> >=app-maven/commons-lang3-3.3.2:0
# org.apache.httpcomponents:httpclient:4.2.3 -> >=dev-java/httpcomponents-client-4.5:4.5
# org.apache.httpcomponents:httpmime:4.2.3 -> >=dev-java/httpcomponents-client-4.5:4.5
# org.eclipse.jetty:jetty-websocket:8.1.9.v20130131 -> >=app-maven/jetty-websocket-8.1.9:0
# xalan:xalan:2.7.1 -> >=dev-java/xalan-2.7.2:0
# xerces:xercesImpl:2.10.0 -> >=dev-java/xerces-2.11.0:2
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/htmlunit-2.12.pom
CDEPEND="
	>=app-maven/commons-lang3-3.3.2:0
	>=app-maven/cssparser-0.9.9:0
	>=app-maven/htmlunit-core-js-2.12:0
	>=app-maven/jetty-websocket-8.1.9:0
	>=app-maven/nekohtml-1.9.18:0
	>=dev-java/commons-codec-1.7:0
	>=dev-java/commons-collections-3.2.1:0
	>=dev-java/commons-io-2.4:1
	>=dev-java/commons-logging-1.2:0
	>=dev-java/httpcomponents-client-4.5:4.5
	>=dev-java/xalan-2.7.2:0
	>=dev-java/xerces-2.11.0:2"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-codec,commons-collections,commons-io-1,commons-logging,cssparser,htmlunit-core-js,nekohtml,commons-lang3,httpcomponents-client-4.5,httpcomponents-client-4.5,jetty-websocket,xalan,xerces-2"
