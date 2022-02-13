# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A powerful text editor with extensive Unicode and CJK support"
HOMEPAGE="http://towo.net/mined/"
SRC_URI="https://downloads.sourceforge.net/project/mined/mined/mined%202015.25/mined-2015.25.tar.gz?ts=gAAAAABhfF-EKWvxGfwH7tpfR0NI8LV87Muimvh4jUigxZZZAD1fN8xgcbBPJc1TQ3f8djMFDbHXXz6rQZI4_qwwEsqakvBpqg%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fmined%2Ffiles%2Fmined%2Fmined%25202015.25%2Fmined-2015.25.tar.gz%2Fdownload -> mined-2015.25.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="test"
IUSE=""
RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND=""
S=${S}/src
src_configure() {
	sed -in 's/OBJDIR=..\/bin\/sh/OBJDIR=bin\/sh/' mkmined
	sed -in 's/\"\${COPT--DTERMIO \$W}\"/\"${CFLAGS} \${COPT--DTERMIO}\"/' mkmined
}

src_compile() {
	mkdir bin/
	./mkmined
}

src_install() {
	dobin bin/sh/mined
	doman ../man/mined.1
}