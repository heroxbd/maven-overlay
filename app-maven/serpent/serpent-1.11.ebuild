# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/serpent-1.11.pom --download-uri http://central.maven.org/maven2/net/razorvine/serpent/1.11/serpent-1.11-sources.jar --slot 0 --keywords "~amd64" --ebuild serpent-1.11.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Serpent serializes an object tree into a Python ast.literal_eval() compatible literal expression. It is safe to send serpent data to other machines over the network for instance
(because only 'safe' literals are encoded).
There is also a deserializer or parse provided that turns such a literal expression back into the appropriate Java object tree.

It is an alternative to JSON to provide easy data integration between Java and Python.  Serpent is more expressive as JSON (it supports more data types)."
HOMEPAGE="https://github.com/irmen/Serpent"
SRC_URI="http://central.maven.org/maven2/net/razorvine/serpent/1.11/serpent-1.11-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="net.razorvine:serpent:1.11"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

