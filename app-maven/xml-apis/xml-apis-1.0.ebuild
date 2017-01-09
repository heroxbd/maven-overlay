# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/xml-apis-1.0.b2.pom --download-uri http://central.maven.org/maven2/xml-apis/xml-apis/1.0.b2/xml-apis-1.0.b2-sources.jar --slot 0 --keywords "~amd64" --ebuild xml-apis-1.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="xml-commons provides an Apache-hosted set of DOM, SAX, and 
    JAXP interfaces for use in other xml-based projects. Our hope is that we 
    can standardize on both a common version and packaging scheme for these 
    critical XML standards interfaces to make the lives of both our developers 
    and users easier. The External Components portion of xml-commons contains 
    interfaces that are defined by external standards organizations. For DOM, 
    that's the W3C; for SAX it's David Megginson and sax.sourceforge.net; for 
    JAXP it's Sun."
HOMEPAGE="http://xml.apache.org/commons/#external"
SRC_URI="http://central.maven.org/maven2/xml-apis/xml-apis/1.0.b2/xml-apis-1.0.b2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="xml-apis:xml-apis:1.0.b2"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

