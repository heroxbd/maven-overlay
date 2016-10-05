# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# Skeleton command:
# java-ebuilder --generate-ebuild --workdir . --pom ../poms/maven-project-2.1.0.pom --download-uri http://central.maven.org/maven2/org/apache/maven/maven-project/2.1.0/maven-project-2.1.0-sources.jar --slot 0 --keywords "~amd64" --ebuild maven-project-2.1.0.ebuild

EAPI=5

inherit java-pkg-2 java-pkg-simple

DESCRIPTION="This library is used to not only read Maven project object model files, but to assemble inheritence
    and to retrieve remote models as required."
HOMEPAGE="http://maven.apache.org/maven-project"
SRC_URI="http://central.maven.org/maven2/org/apache/maven/maven-project/2.1.0/maven-project-2.1.0-sources.jar"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc source"
MAVEN_ID="org.apache.maven:maven-project:2.1.0"

# Common dependencies
# POM: ../poms/maven-project-2.1.0.pom
# org.apache.maven:maven-artifact:2.1.0 -> >=app-maven/maven-artifact-2.1.0:0
# org.apache.maven:maven-artifact-manager:2.1.0 -> >=app-maven/maven-artifact-manager-2.1.0:0
# org.apache.maven:maven-model:2.1.0 -> >=app-maven/maven-model-2.1.0:0
# org.apache.maven:maven-plugin-registry:2.1.0 -> >=app-maven/maven-plugin-registry-2.1.0:0
# org.apache.maven:maven-profile:2.1.0 -> >=app-maven/maven-profile-2.1.0:0
# org.apache.maven:maven-settings:2.1.0 -> >=app-maven/maven-settings-2.1.0:0
# org.codehaus.plexus:plexus-container-default:1.0-alpha-9-stable-1 -> >=app-maven/plexus-container-default-1.0:0
# org.codehaus.plexus:plexus-interpolation:1.8.1 -> >=app-maven/plexus-interpolation-1.0:0
# org.codehaus.plexus:plexus-utils:1.5.6 -> >=app-maven/plexus-utils-1.5.6:0
# POM: ../poms/maven-project-2.1.0.pom
CDEPEND="
	>=app-maven/maven-artifact-2.1.0:0
	>=app-maven/maven-artifact-manager-2.1.0:0
	>=app-maven/maven-model-2.1.0:0
	>=app-maven/maven-plugin-registry-2.1.0:0
	>=app-maven/maven-profile-2.1.0:0
	>=app-maven/maven-settings-2.1.0:0
	>=app-maven/plexus-container-default-1.0:0
	>=app-maven/plexus-interpolation-1.0:0
	>=app-maven/plexus-utils-1.5.6:0"

DEPEND="${CDEPEND}
	>=virtual/jdk-1.7
	app-arch/unzip"

RDEPEND="${CDEPEND}
	>=virtual/jre-1.7"

S="${WORKDIR}"

JAVA_GENTOO_CLASSPATH="maven-artifact,maven-artifact-manager,maven-model,maven-plugin-registry,maven-profile,maven-settings,plexus-container-default,plexus-interpolation,plexus-utils"
