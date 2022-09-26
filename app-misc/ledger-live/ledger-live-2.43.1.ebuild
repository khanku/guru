# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Ledger Live desktop manger"
HOMEPAGE="https://www.ledger.com/"
SRC_URI="https://download.live.ledger.com/ledger-live-desktop-${PV}-linux-x86_64.AppImage"

LICENSE="all-rights-reserved"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="sys-fs/fuse:0"

RESTRICT="binchecks strip"

S="${WORKDIR}"

src_install() {
	cp "${DISTDIR}/ledger-live-desktop-${PV}-linux-x86_64.AppImage" ledger-live || die
	dobin ledger-live
}
