# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jets3t-0.7.1.pom --download-uri http://central.maven.org/maven2/net/java/dev/jets3t/jets3t/0.7.1/jets3t-0.7.1-sources.jar --slot 0 --keywords "~amd64" --ebuild jets3t-0.7.1.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="JetS3t is a free, open-source Java toolkit and application suite for the Amazon Simple Storage Service (Amazon S3). The JetS3t toolkit provides Java programmers with a powerful yet simple API for interacting with S3 and managing data stored there."
HOMEPAGE="http://jets3t.s3.amazonaws.com/index.html"
SRC_URI="http://central.maven.org/maven2/net/java/dev/jets3t/jets3t/0.7.1/jets3t-0.7.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="net.java.dev.jets3t:jets3t:0.7.1"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jets3t-0.7.1.pom
# commons-codec:commons-codec:1.3 -> >=dev-java/commons-codec-1.7:0
# commons-httpclient:commons-httpclient:3.1 -> >=dev-java/commons-httpclient-3.1:3
# commons-logging:commons-logging:1.1.1 -> >=dev-java/commons-logging-1.2:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jets3t-0.7.1.pom
CDEPEND="
	>=dev-java/commons-codec-1.7:0
	>=dev-java/commons-httpclient-3.1:3
	>=dev-java/commons-logging-1.2:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="commons-codec,commons-httpclient-3,commons-logging"
