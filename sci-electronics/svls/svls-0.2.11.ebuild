# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	aho-corasick@0.7.18
	anyhow@1.0.76
	async-trait@0.1.53
	atty@0.2.14
	auto_impl@1.0.1
	autocfg@1.1.0
	bitflags@1.3.2
	bytecount@0.6.2
	bytes@1.1.0
	cfg-if@1.0.0
	clap@3.2.2
	clap_complete@3.2.5
	clap_derive@3.2.2
	clap_lex@0.2.4
	colored@2.0.0
	dashmap@5.3.3
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	enquote@1.1.0
	equivalent@1.0.0
	form_urlencoded@1.0.1
	futures-channel@0.3.21
	futures-core@0.3.21
	futures-io@0.3.21
	futures-macro@0.3.21
	futures-sink@0.3.21
	futures-task@0.3.21
	futures-util@0.3.21
	futures@0.3.21
	getrandom@0.2.6
	hashbrown@0.12.1
	hashbrown@0.14.0
	heck@0.4.0
	hermit-abi@0.1.19
	httparse@1.8.0
	idna@0.2.3
	indexmap@1.9.2
	indexmap@2.0.0
	itoa@1.0.1
	lazy_static@1.4.0
	libc@0.2.125
	libloading@0.8.0
	lock_api@0.4.7
	log@0.4.20
	lsp-types@0.94.1
	matches@0.1.9
	memchr@2.5.0
	minimal-lexical@0.2.1
	nom-greedyerror@0.5.0
	nom-packrat-macros@0.7.0
	nom-packrat@0.7.0
	nom-recursive-macros@0.5.0
	nom-recursive@0.5.0
	nom-tracable-macros@0.9.0
	nom-tracable@0.9.0
	nom@7.1.3
	nom_locate@4.1.0
	num_threads@0.1.6
	once_cell@1.10.0
	os_str_bytes@6.0.0
	percent-encoding@2.1.0
	pin-project-internal@1.0.10
	pin-project-lite@0.2.9
	pin-project@1.0.10
	pin-utils@0.1.0
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.63
	quote@1.0.29
	redox_syscall@0.2.13
	redox_users@0.4.3
	regex-syntax@0.6.25
	regex@1.5.5
	rustversion@1.0.6
	ryu@1.0.9
	same-file@1.0.6
	scopeguard@1.1.0
	serde@1.0.193
	serde_derive@1.0.193
	serde_json@1.0.81
	serde_regex@1.1.0
	serde_repr@0.1.8
	serde_spanned@0.6.4
	simplelog@0.12.1
	slab@0.4.6
	str-concat@0.2.0
	strsim@0.10.0
	sv-filelist-parser@0.1.3
	sv-parser-error@0.13.3
	sv-parser-macros@0.13.3
	sv-parser-parser@0.13.3
	sv-parser-pp@0.13.3
	sv-parser-syntaxtree@0.13.3
	sv-parser@0.13.3
	svlint@0.9.2
	syn@1.0.104
	syn@2.0.28
	term@0.7.0
	termcolor@1.1.3
	textwrap@0.15.0
	thiserror-impl@1.0.31
	thiserror@1.0.31
	time-macros@0.2.4
	time@0.3.9
	tinyvec@1.6.0
	tinyvec_macros@0.1.0
	tokio-macros@1.7.0
	tokio-util@0.7.1
	tokio@1.18.1
	toml@0.8.8
	toml_datetime@0.6.5
	toml_edit@0.21.0
	tower-layer@0.3.1
	tower-lsp-macros@0.9.0
	tower-lsp@0.20.0
	tower-service@0.3.1
	tower@0.4.12
	tracing-attributes@0.1.21
	tracing-core@0.1.26
	tracing@0.1.34
	unicode-bidi@0.3.8
	unicode-ident@1.0.5
	unicode-normalization@0.1.19
	url@2.2.2
	version_check@0.9.4
	walkdir@2.3.2
	wasi@0.10.2+wasi-snapshot-preview1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-targets@0.48.0
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.48.0
	winnow@0.5.15
"

inherit cargo

DESCRIPTION="SystemVerilog language server"
HOMEPAGE="https://github.com/dalance/svls"
SRC_URI="
	https://github.com/dalance/svls/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+="
	ISC MIT MPL-2.0 Unicode-DFS-2016 Unlicense
	|| ( Apache-2.0 Boost-1.0 )
"
SLOT="0"
KEYWORDS="~amd64"

QA_FLAGS_IGNORED="usr/bin/svls"
