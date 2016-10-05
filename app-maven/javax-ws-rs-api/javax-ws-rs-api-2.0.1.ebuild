# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/javax.ws.rs-api-2.0.1.pom --download-uri http://central.maven.org/maven2/javax/ws/rs/javax.ws.rs-api/2.0.1/javax.ws.rs-api-2.0.1-sources.jar --slot 0 --keywords "~amd64" --ebuild javax-ws-rs-api-2.0.1.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Java.net - The Source for Java Technology Collaboration"
HOMEPAGE="http://jax-rs-spec.java.net"
SRC_URI="http://central.maven.org/maven2/javax/ws/rs/javax.ws.rs-api/2.0.1/javax.ws.rs-api-2.0.1-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="javax.ws.rs:javax.ws.rs-api:2.0.1"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

