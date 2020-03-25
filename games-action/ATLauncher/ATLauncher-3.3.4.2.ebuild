# Copyright 2019-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop xdg

DESCRIPTION="Minecraft launcher which integrates multiple different ModPacks"
HOMEPAGE="https://atlauncher.com
	https://github.com/ATLauncher/ATLauncher"
SRC_URI="https://github.com/ATLauncher/ATLauncher/releases/download/${PV}/${P}.jar
	https://raw.githubusercontent.com/ATLauncher/ATLauncher/master/src/main/resources/assets/image/Icon.ico -> ${PN}.ico"

KEYWORDS="~amd64 ~x86"
LICENSE="GPL-3"
SLOT="0"

BDEPEND="media-gfx/imagemagick"

RDEPEND="virtual/jre:1.8"

S="${WORKDIR}"

src_unpack() {
	# do not unpack jar file
	cp "${DISTDIR}/${PN}.ico" "${S}" || die
}

src_compile() {
	convert ${PN}.ico ${PN}.png || die
}

src_install() {
	dodir /opt/${PN}
	insinto /opt/${PN}/
	newins "${DISTDIR}/${P}.jar" ${PN}.jar

	insinto /opt/bin/
	doins "${FILESDIR}/${PN}"
	fperms +x /opt/bin/${PN}

	newicon -s 256x256 ${PN}-0.png ${PN}.png
	newicon -s 128x128 ${PN}-1.png ${PN}.png
	newicon -s 64x64 ${PN}-2.png ${PN}.png
	newicon -s 48x48 ${PN}-3.png ${PN}.png
	newicon -s 32x32 ${PN}-4.png ${PN}.png
	newicon -s 16x16 ${PN}-5.png ${PN}.png
	make_desktop_entry ${PN} "ATLauncher" ${PN} Game
}
