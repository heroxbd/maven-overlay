# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/pyrolite-4.9.pom --download-uri http://central.maven.org/maven2/net/razorvine/pyrolite/4.9/pyrolite-4.9-sources.jar --slot 0 --keywords "~amd64" --ebuild pyrolite-4.9.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="This library allows your Java program to interface very easily with the Python world. It uses the Pyro protocol to call methods on remote objects. (See https://github.com/irmen/Pyro4). To that end, it also contains and uses a feature complete pickle protocol implementation -read and write- to exchange data with Pyro/Python.

Pyrolite only implements part of the client side Pyro library, hence its name 'lite'...  But because Pyrolite has no dependencies, it is a much lighter way to use Pyro from Java/.NET than a solution with jython+pyro or IronPython+Pyro would provide. So if you don't need Pyro's full feature set, and don't require your Java/.NET code to host Pyro objects itself, Pyrolite may be a good choice to connect java or .NET and python."
HOMEPAGE="https://github.com/irmen/Pyrolite"
SRC_URI="http://central.maven.org/maven2/net/razorvine/pyrolite/4.9/pyrolite-4.9-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="net.razorvine:pyrolite:4.9"

# Common dependencies
# POM: ../poms/pyrolite-4.9.pom
# net.razorvine:serpent:1.11 -> >=app-maven/serpent-1.11:0
# POM: ../poms/pyrolite-4.9.pom
CDEPEND="
	>=app-maven/serpent-1.11:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="serpent"
