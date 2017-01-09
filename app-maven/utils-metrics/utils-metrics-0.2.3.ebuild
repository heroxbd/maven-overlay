# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/utils-metrics_2.10-0.2.3.pom --download-uri http://central.maven.org/maven2/org/bdgenomics/utils/utils-metrics_2.10/0.2.3/utils-metrics_2.10-0.2.3-sources.jar --slot 2.10 --keywords "~amd64" --ebuild utils-metrics-0.2.3.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="General utility code used across BDG projects"
HOMEPAGE="http://bdgenomics.org/utils-metrics_2.10/"
SRC_URI="http://central.maven.org/maven2/org/bdgenomics/utils/utils-metrics_2.10/0.2.3/utils-metrics_2.10-0.2.3-sources.jar"
LICENSE=""
SLOT="2.10"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.bdgenomics.utils:utils-metrics_2.10:0.2.3"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/utils-metrics_2.10-0.2.3.pom
# com.netflix.servo:servo-core:0.5.5 -> >=app-maven/servo-core-0.5.5:0
# org.bdgenomics.utils:utils-misc_2.10:0.2.3 -> >=app-maven/utils-misc-0.2.3:2.10
# org.scala-lang:scala-library:2.10.4 -> >=app-maven/scala-library-2.11.8:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/utils-metrics_2.10-0.2.3.pom
CDEPEND="
	>=app-maven/scala-library-2.11.8:0
	>=app-maven/servo-core-0.5.5:0
	>=app-maven/utils-misc-0.2.3:2.10"
# Compile dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/utils-metrics_2.10-0.2.3.pom
# org.apache.hadoop:hadoop-client:2.2.0 -> >=app-maven/hadoop-client-bin-2.2.0:0
# org.apache.spark:spark-core_2.10:1.2.0 -> >=app-maven/spark-core-1.6.1:2.10
DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip
	>=app-maven/hadoop-client-bin-2.2.0:0
	>=app-maven/spark-core-1.6.1:2.10"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="servo-core,utils-misc-2.10,scala-library"
JAVA_CLASSPATH_EXTRA="hadoop-client-bin,spark-core-2.10"
