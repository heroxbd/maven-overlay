# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/guava-bootstrap-jdk5-17.0.pom --download-uri http://central.maven.org/maven2/com/google/guava/guava-bootstrap-jdk5/17.0/guava-bootstrap-jdk5-17.0-sources.jar --slot 0 --keywords "~amd64" --ebuild guava-bootstrap-jdk5-17.0.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="ExecutorService's type parameters changed between JDK5 and JDK6 in a
    way that makes it impossible for our invokeAll/invokeAny methods to
    match both at compile time. This project builds a JDK6-like copy of
    ExecutorService (but with JDK5 compiler settings to ensure that it will
    work with JRE5 at runtime). It also builds a version of
    AbstractExecutorService that is equivalent to a JDK5 version but using
    the JDK6 type parameters for the invokeAll/invokeAny methods just as with
    ExecutorService. This project's is then used in the bootstrap class path
    of Guava proper."
HOMEPAGE="http://code.google.com/p/guava-libraries/guava-bootstrap-jdk5"
SRC_URI="http://central.maven.org/maven2/com/google/guava/guava-bootstrap-jdk5/17.0/guava-bootstrap-jdk5-17.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="com.google.guava:guava-bootstrap-jdk5:17.0"

DEPEND="
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="
	>=virtual/jre-1.7"

S="${WORKDIR}"

