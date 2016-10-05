# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/cal10n-api-0.7.7.pom --download-uri http://central.maven.org/maven2/ch/qos/cal10n/cal10n-api/0.7.7/cal10n-api-0.7.7-sources.jar --slot 0 --keywords "~amd64" --ebuild cal10n-api-0.7.7.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Compiler assisted localization library (CAL10N)"
HOMEPAGE="http://cal10n.qos.ch/cal10n-api"
SRC_URI="http://central.maven.org/maven2/ch/qos/cal10n/cal10n-api/0.7.7/cal10n-api-0.7.7-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="ch.qos.cal10n:cal10n-api:0.7.7"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"
