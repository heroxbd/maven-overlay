# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/xml-apis-1.3.04.pom --download-uri http://central.maven.org/maven2/xml-apis/xml-apis/1.3.04/xml-apis-1.3.04-sources.jar --slot 0 --keywords "~amd64" --ebuild xml-apis-1.3.04.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="xml-commons provides an Apache-hosted set of DOM, SAX, and 
    JAXP interfaces for use in other xml-based projects. Our hope is that we 
    can standardize on both a common version and packaging scheme for these 
    critical XML standards interfaces to make the lives of both our developers 
    and users easier. The External Components portion of xml-commons contains 
    interfaces that are defined by external standards organizations. For DOM, 
    that's the W3C; for SAX it's David Megginson and sax.sourceforge.net; for 
    JAXP it's Sun."
HOMEPAGE="http://xml.apache.org/commons/components/external/"
SRC_URI="http://central.maven.org/maven2/xml-apis/xml-apis/1.3.04/xml-apis-1.3.04-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="xml-apis:xml-apis:1.3.04"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

