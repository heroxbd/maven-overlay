# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/jsch.agentproxy.sshagent-0.0.6.pom --download-uri http://central.maven.org/maven2/com/jcraft/jsch.agentproxy.sshagent/0.0.6/jsch.agentproxy.sshagent-0.0.6-sources.jar --slot 0 --keywords "~amd64" --ebuild jsch-agentproxy-sshagent-0.0.6.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="a proxy to ssh-agent and Pageant in Java"
HOMEPAGE="http://www.jcraft.com/jsch-agent-proxy/jsch.agentproxy.sshagent/"
SRC_URI="http://central.maven.org/maven2/com/jcraft/jsch.agentproxy.sshagent/0.0.6/jsch.agentproxy.sshagent-0.0.6-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="com.jcraft:jsch.agentproxy.sshagent:0.0.6"

# Common dependencies
# POM: ../poms/jsch.agentproxy.sshagent-0.0.6.pom
# com.jcraft:jsch.agentproxy.core:0.0.6 -> >=app-maven/jsch-agentproxy-core-0.0.6:0
# POM: ../poms/jsch.agentproxy.sshagent-0.0.6.pom
CDEPEND="
	>=app-maven/jsch-agentproxy-core-0.0.6:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="jsch-agentproxy-core"
