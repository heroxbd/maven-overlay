# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/minlog-1.3.0.pom --download-uri http://central.maven.org/maven2/com/esotericsoftware/minlog/1.3.0/minlog-1.3.0-sources.jar --slot 0 --keywords "~amd64" --ebuild minlog-1.3.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Minimal overhead Java logging"
HOMEPAGE="https://github.com/EsotericSoftware/minlog"
SRC_URI="http://central.maven.org/maven2/com/esotericsoftware/minlog/1.3.0/minlog-1.3.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.esotericsoftware:minlog:1.3.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

