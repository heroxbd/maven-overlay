# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/stax-api-1.0-2.pom --download-uri http://central.maven.org/maven2/javax/xml/stream/stax-api/1.0-2/stax-api-1.0-2-sources.jar --slot 0 --keywords "~amd64" --ebuild stax-api-1.0.2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="StAX is a standard XML processing API that allows you to stream XML data from and to your application."
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/javax/xml/stream/stax-api/1.0-2/stax-api-1.0-2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="javax.xml.stream:stax-api:1.0-2"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

