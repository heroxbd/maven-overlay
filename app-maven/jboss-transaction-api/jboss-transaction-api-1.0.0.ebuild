# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/jboss-transaction-api_1.1_spec-1.0.0.Beta1.pom --download-uri http://central.maven.org/maven2/org/jboss/spec/javax/transaction/jboss-transaction-api_1.1_spec/1.0.0.Beta1/jboss-transaction-api_1.1_spec-1.0.0.Beta1-sources.jar --slot 1.1_spec --keywords "~amd64" --ebuild jboss-transaction-api-1.0.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="The Java Transaction 1.1 API classes"
HOMEPAGE="http://www.jboss.org/jboss-transaction-api_1.1_spec/"
SRC_URI="http://central.maven.org/maven2/org/jboss/spec/javax/transaction/jboss-transaction-api_1.1_spec/1.0.0.Beta1/jboss-transaction-api_1.1_spec-1.0.0.Beta1-sources.jar"
LICENSE=""
SLOT="1.1_spec"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.jboss.spec.javax.transaction:jboss-transaction-api_1.1_spec:1.0.0.Beta1"

DEPEND="
	>=virtual/jdk-1.5
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.5"

S="${WORKDIR}"

