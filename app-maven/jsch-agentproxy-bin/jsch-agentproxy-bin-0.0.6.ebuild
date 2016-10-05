# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jsch.agentproxy-0.0.6.pom --download-uri http://central.maven.org/maven2/com/jcraft/jsch.agentproxy/0.0.6/jsch.agentproxy-0.0.6.jar --slot 0 --keywords "~amd64" --ebuild jsch-agentproxy-bin-0.0.6.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-binjar

DESCRIPTION="a proxy to ssh-agent and Pageant in Java"
HOMEPAGE="http://www.jcraft.com/jsch-agent-proxy/"
SRC_URI="http://central.maven.org/maven2/com/jcraft/jsch.agentproxy/0.0.6/jsch.agentproxy-0.0.6.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="com.jcraft:jsch.agentproxy:0.0.6"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

