# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/activation-1.1.1.pom --download-uri http://central.maven.org/maven2/javax/activation/activation/1.1.1/activation-1.1.1-sources.jar --slot 0 --keywords "~amd64" --ebuild activation-1.1.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The JavaBeans(TM) Activation Framework is used by the JavaMail(TM) API to manage MIME data"
HOMEPAGE="http://java.sun.com/javase/technologies/desktop/javabeans/jaf/index.jsp"
SRC_URI="http://central.maven.org/maven2/javax/activation/activation/1.1.1/activation-1.1.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.activation:activation:1.1.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

