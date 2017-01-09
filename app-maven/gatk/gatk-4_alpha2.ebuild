# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gatk-4.alpha.2.pom --download-uri http://central.maven.org/maven2/org/broadinstitute/gatk/4.alpha.2/gatk-4.alpha.2-sources.jar --slot 0 --keywords "~amd64" --ebuild gatk-4_alpha2.ebuild

EAPI=5

IUSE="doc source"

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="Development on GATK 4"
HOMEPAGE="http://github.com/broadinstitute/gatk"
SRC_URI="http://central.maven.org/maven2/org/broadinstitute/gatk/4.alpha.2/gatk-4.alpha.2-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
MAVEN_ID="org.broadinstitute:gatk:4.alpha.2"

# Common dependencies
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gatk-4.alpha.2.pom
# com.esotericsoftware:kryo:3.0.3 -> >=app-maven/kryo-3.0.3:0
# com.esotericsoftware:reflectasm:1.10.0 -> >=dev-java/reflectasm-1.11.0:0
# com.github.fommil.netlib:all:1.1.2 -> >=app-maven/all-bin-1.1.2:0
# com.github.jsr203hadoop:jsr203hadoop:1.0.2 -> >=app-maven/jsr203hadoop-1.0.2:0
# com.github.lindenb:jbwa:1.0.0_ppc64 -> >=app-maven/jbwa-1.0.0:0
# com.github.samtools:htsjdk:2.6.0 -> >=app-maven/htsjdk-2.6.0:0
# com.google.apis:google-api-services-genomics:v1-rev90-1.22.0 -> >=app-maven/google-api-services-genomics-1.90.1.22.0:0
# com.google.cloud:gcloud-java-nio:0.2.5 -> >=app-maven/gcloud-java-nio-0.2.5:0
# com.google.cloud.dataflow:google-cloud-dataflow-java-sdk-all:0.4.150727 -> >=app-maven/google-cloud-dataflow-java-sdk-all-0.4.150727:0
# com.google.cloud.genomics:gatk-tools-java:1.1 -> >=app-maven/gatk-tools-java-1.1:0
# com.google.cloud.genomics:google-genomics-dataflow:v1beta2-0.15 -> >=app-maven/google-genomics-dataflow-1.2.0.15:0
# com.google.cloud.genomics:google-genomics-utils:v1beta2-0.30 -> >=app-maven/google-genomics-utils-1.2.0.19:0
# com.google.guava:guava:18.0 -> >=dev-java/guava-10.0.1:10
# com.intel:genomicsdb:0.2.1 -> >=app-maven/genomicsdb-0.2.1:0
# com.intel.gkl:gkl:0.1.2 -> >=app-maven/gkl-0.1.2:0
# com.opencsv:opencsv:3.4 -> >=app-maven/opencsv-3.4:0
# commons-io:commons-io:2.4 -> >=dev-java/commons-io-2.4:1
# de.javakaffee:kryo-serializers:0.37 -> >=app-maven/kryo-serializers-0.37:0
# it.unimi.dsi:fastutil:7.0.6 -> >=dev-java/fastutil-7.0.10:0
# net.sf.jopt-simple:jopt-simple:5.0-beta-1 -> >=dev-java/jopt-simple-4.5:0
# org.apache.commons:commons-collections4:4.1 -> >=app-maven/commons-collections4-4.1:0
# org.apache.commons:commons-lang3:3.4 -> >=app-maven/commons-lang3-3.3.2:0
# org.apache.commons:commons-math3:3.5 -> >=app-maven/commons-math3-3.4.1:0
# org.apache.commons:commons-vfs2:2.0 -> >=app-maven/commons-vfs2-2.0:0
# org.apache.hadoop:hadoop-client:2.7.2 -> >=app-maven/hadoop-client-bin-2.2.0:0
# org.apache.hadoop:hadoop-minicluster:2.7.2 -> >=app-maven/hadoop-minicluster-bin-2.7.2:0
# org.apache.logging.log4j:log4j-api:2.3 -> >=dev-java/log4j-api-2.2:2
# org.apache.logging.log4j:log4j-core:2.3 -> >=dev-java/log4j-api-2.2:2
# org.apache.spark:spark-mllib_2.10:1.6.1 -> >=app-maven/spark-mllib-1.6.1:2.10
# org.bdgenomics.adam:adam-core_2.10:0.18.0 -> >=app-maven/adam-core-0.18.0:2.10
# org.bdgenomics.bdg-formats:bdg-formats:0.5.0 -> >=app-maven/bdg-formats-0.5.0:0
# org.jgrapht:jgrapht-core:0.9.1 -> >=app-maven/jgrapht-core-0.9.1:0
# org.objenesis:objenesis:2.1 -> >=app-maven/objenesis-2.1:0
# org.ojalgo:ojalgo:39.0 -> >=app-maven/ojalgo-39.0:0
# org.reflections:reflections:0.9.10 -> >=app-maven/reflections-0.9.9:0
# org.seqdoop:hadoop-bam:7.6.0 -> >=app-maven/hadoop-bam-7.0.0:0
# org.testng:testng:6.9.6 -> >=dev-java/testng-6.9.10:0
# POM: /fefs/disk/usr100/gentoo/var/lib/java-ebuilder/poms/gatk-4.alpha.2.pom
CDEPEND="
	>=app-maven/adam-core-0.18.0:2.10
	>=app-maven/all-bin-1.1.2:0
	>=app-maven/bdg-formats-0.5.0:0
	>=app-maven/commons-collections4-4.1:0
	>=app-maven/commons-lang3-3.3.2:0
	>=app-maven/commons-math3-3.4.1:0
	>=app-maven/commons-vfs2-2.0:0
	>=app-maven/gatk-tools-java-1.1:0
	>=app-maven/gcloud-java-nio-0.2.5:0
	>=app-maven/genomicsdb-0.2.1:0
	>=app-maven/gkl-0.1.2:0
	>=app-maven/google-api-services-genomics-1.90.1.22.0:0
	>=app-maven/google-cloud-dataflow-java-sdk-all-0.4.150727:0
	>=app-maven/google-genomics-dataflow-1.2.0.15:0
	>=app-maven/google-genomics-utils-1.2.0.19:0
	>=app-maven/hadoop-bam-7.0.0:0
	>=app-maven/hadoop-client-bin-2.2.0:0
	>=app-maven/hadoop-minicluster-bin-2.7.2:0
	>=app-maven/htsjdk-2.6.0:0
	>=app-maven/jbwa-1.0.0:0
	>=app-maven/jgrapht-core-0.9.1:0
	>=app-maven/jsr203hadoop-1.0.2:0
	>=app-maven/kryo-3.0.3:0
	>=app-maven/kryo-serializers-0.37:0
	>=app-maven/objenesis-2.1:0
	>=app-maven/ojalgo-39.0:0
	>=app-maven/opencsv-3.4:0
	>=app-maven/reflections-0.9.9:0
	>=app-maven/spark-mllib-1.6.1:2.10
	>=dev-java/commons-io-2.4:1
	>=dev-java/fastutil-7.0.10:0
	>=dev-java/guava-10.0.1:10
	>=dev-java/jopt-simple-4.5:0
	>=dev-java/log4j-api-2.2:2
	>=dev-java/reflectasm-1.11.0:0
	>=dev-java/testng-6.9.10:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="kryo,reflectasm,all-bin,jsr203hadoop,jbwa,htsjdk,google-api-services-genomics,gcloud-java-nio,google-cloud-dataflow-java-sdk-all,gatk-tools-java,google-genomics-dataflow,google-genomics-utils,guava-10,genomicsdb,gkl,opencsv,commons-io-1,kryo-serializers,fastutil,jopt-simple,commons-collections4,commons-lang3,commons-math3,commons-vfs2,hadoop-client-bin,hadoop-minicluster-bin,log4j-api-2,log4j-api-2,spark-mllib-2.10,adam-core-2.10,bdg-formats,jgrapht-core,objenesis,ojalgo,reflections,hadoop-bam,testng"
