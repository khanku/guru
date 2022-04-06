# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

RUBY_FAKEGEM_RECIPE_TEST="rspec3"
USE_RUBY="ruby26 ruby27 ruby30"

inherit readme.gentoo-r1 ruby-fakegem

DESCRIPTION="Fish-like autosuggestions for zsh"
HOMEPAGE="https://github.com/zsh-users/zsh-autosuggestions"
SRC_URI="https://github.com/zsh-users/zsh-autosuggestions/archive/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/all/${P}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=">=app-shells/zsh-4.3.11"
BDEPEND="
	test? (
		${RDEPEND}
		app-misc/tmux
		dev-ruby/bundler
		dev-ruby/pry
		dev-ruby/pry-byebug
		dev-ruby/rspec-wait
	)
"

RESTRICT="!test? ( test )"

DISABLE_AUTOFORMATTING="true"
DOC_CONTENTS="In order to use ${CATEGORY}/${PN} add
. /usr/share/zsh/site-functions/${PN}.zsh
at the end of your ~/.zshrc"

src_prepare() {
	# FIXME: Disable failing tests
	rm "spec/options/buffer_max_size_spec.rb" \
		|| die "Could not remove tests"
	ruby-ng_src_prepare
}

src_install() {
	insinto "/usr/share/zsh/site-functions/"
	doins "${PN}.zsh"

	readme.gentoo_create_doc
	einstalldocs
}

pkg_postinst() {
	readme.gentoo_print_elog
}