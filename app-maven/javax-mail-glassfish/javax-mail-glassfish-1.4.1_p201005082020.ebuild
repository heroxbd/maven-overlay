# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.mail.glassfish-1.4.1.v201005082020.pom --download-uri http://central.maven.org/maven2/org/eclipse/jetty/orbit/javax.mail.glassfish/1.4.1.v201005082020/javax.mail.glassfish-1.4.1.v201005082020-sources.jar --slot 0 --keywords "~amd64" --ebuild javax-mail-glassfish-1.4.1_p201005082020.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="This artifact originates from the Orbit Project at Eclipse, 
    it is an osgi bundle and is signed as well."
HOMEPAGE="http://www.eclipse.org/jetty/jetty-orbit/javax.mail.glassfish"
SRC_URI="http://central.maven.org/maven2/org/eclipse/jetty/orbit/javax.mail.glassfish/1.4.1.v201005082020/javax.mail.glassfish-1.4.1.v201005082020-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.eclipse.jetty.orbit:javax.mail.glassfish:1.4.1.v201005082020"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.mail.glassfish-1.4.1.v201005082020.pom
# org.eclipse.jetty.orbit:javax.activation:1.1.0.v201105071233 -> >=app-maven/javax-activation-1.1.0:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/javax.mail.glassfish-1.4.1.v201005082020.pom
CDEPEND="
	>=app-maven/javax-activation-1.1.0:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="javax-activation"
