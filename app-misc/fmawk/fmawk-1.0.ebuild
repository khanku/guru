# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit optfeature

DESCRIPTION="File manager written in awk"
HOMEPAGE="https://github.com/huijunchen9260/fm.awk/"

if [[ "${PV}" == *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/huijunchen9260/fm.awk.git"
else
	SRC_URI="https://github.com/huijunchen9260/fm.awk/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/fm.awk-${PV}"
	KEYWORDS="~amd64"
fi

LICENSE="GPL-3+"
SLOT="0"

RDEPEND="virtual/awk"

src_compile() {
	:
}

src_install() {
	emake DESTDIR="${D}" UEBERZUG_SUPPORT=YES install
	einstalldocs
}

pkg_postinst() {
	optfeature "PDFs preview" app-text/poppler
	optfeature "images preview" media-gfx/chafa
	optfeature "videos preview" media-video/ffmpegthumbnailer
}