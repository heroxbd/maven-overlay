# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/org.osgi.core-4.2.0.pom --download-uri http://central.maven.org/maven2/org/osgi/org.osgi.core/4.2.0/org.osgi.core-4.2.0-sources.jar --slot 0 --keywords "~amd64" --ebuild org-osgi-core-4.2.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="POM was created by Sonatype Nexus"
HOMEPAGE=""
SRC_URI="http://central.maven.org/maven2/org/osgi/org.osgi.core/4.2.0/org.osgi.core-4.2.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.osgi:org.osgi.core:4.2.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

