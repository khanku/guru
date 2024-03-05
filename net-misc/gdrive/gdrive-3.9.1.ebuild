# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	android_system_properties@0.1.5
	anyhow@1.0.68
	async-recursion@1.0.2
	async-trait@0.1.61
	autocfg@1.1.0
	base64@0.13.1
	base64@0.21.0
	bitflags@1.3.2
	bumpalo@3.11.1
	bytes@1.3.0
	cc@1.0.78
	cfg-if@1.0.0
	chrono@0.4.23
	clap@4.0.32
	clap_derive@4.0.21
	clap_lex@0.3.0
	codespan-reporting@0.11.1
	core-foundation-sys@0.8.3
	core-foundation@0.9.3
	cxx-build@1.0.86
	cxx@1.0.86
	cxxbridge-flags@1.0.86
	cxxbridge-macro@1.0.86
	darling@0.14.2
	darling_core@0.14.2
	darling_macro@0.14.2
	either@1.8.0
	errno-dragonfly@0.1.2
	errno@0.2.8
	exponential-backoff@1.1.0
	fastrand@1.8.0
	filetime@0.2.19
	fnv@1.0.7
	form_urlencoded@1.1.0
	futures-channel@0.3.25
	futures-core@0.3.25
	futures-executor@0.3.25
	futures-io@0.3.25
	futures-macro@0.3.25
	futures-sink@0.3.25
	futures-task@0.3.25
	futures-util@0.3.25
	futures@0.3.25
	getrandom@0.1.16
	getrandom@0.2.9
	h2@0.3.15
	hashbrown@0.12.3
	heck@0.4.0
	hermit-abi@0.2.6
	hex@0.4.3
	home@0.5.4
	http-body@0.4.5
	http@0.2.8
	httparse@1.8.0
	httpdate@1.0.2
	human_bytes@0.4.1
	hyper-rustls@0.23.2
	hyper@0.14.23
	iana-time-zone-haiku@0.1.1
	iana-time-zone@0.1.53
	ident_case@1.0.1
	idna@0.1.5
	idna@0.3.0
	indexmap@1.9.2
	instant@0.1.12
	io-lifetimes@1.0.3
	is-terminal@0.4.2
	itertools@0.10.5
	itoa@1.0.5
	js-sys@0.3.60
	libc@0.2.139
	link-cplusplus@1.0.8
	linux-raw-sys@0.1.4
	lock_api@0.4.9
	log@0.4.17
	matches@0.1.9
	md5@0.7.0
	memchr@2.5.0
	mime@0.3.16
	mime_guess@2.0.4
	mio@0.8.5
	mktemp@0.5.0
	num-integer@0.1.45
	num-traits@0.2.15
	num_cpus@1.15.0
	num_threads@0.1.6
	once_cell@1.17.0
	openssl-probe@0.1.5
	os_str_bytes@6.4.1
	parking_lot@0.12.1
	parking_lot_core@0.9.5
	percent-encoding@1.0.1
	percent-encoding@2.2.0
	pin-project-lite@0.2.9
	pin-utils@0.1.0
	ppv-lite86@0.2.17
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.49
	quote@1.0.23
	rand@0.7.3
	rand_chacha@0.2.2
	rand_core@0.5.1
	rand_hc@0.2.0
	redox_syscall@0.2.16
	remove_dir_all@0.5.3
	ring@0.16.20
	rustc_version@0.2.3
	rustc_version_runtime@0.2.1
	rustix@0.36.6
	rustls-native-certs@0.6.2
	rustls-pemfile@1.0.2
	rustls@0.20.7
	ryu@1.0.12
	schannel@0.1.21
	scopeguard@1.1.0
	scratch@1.0.3
	sct@0.7.0
	seahash@4.1.0
	security-framework-sys@2.6.1
	security-framework@2.7.0
	semver-parser@0.7.0
	semver@0.9.0
	serde@1.0.152
	serde_derive@1.0.152
	serde_json@1.0.91
	serde_with@2.2.0
	serde_with_macros@2.2.0
	signal-hook-registry@1.4.0
	slab@0.4.7
	smallvec@1.10.0
	socket2@0.4.7
	spin@0.5.2
	strsim@0.10.0
	syn@1.0.107
	tabwriter@1.2.1
	tar@0.4.38
	tempfile@3.3.0
	termcolor@1.1.3
	time-core@0.1.0
	time-macros@0.2.6
	time@0.3.17
	tinyvec@1.6.0
	tinyvec_macros@0.1.0
	tokio-macros@1.8.2
	tokio-rustls@0.23.4
	tokio-util@0.7.4
	tokio@1.24.1
	tower-service@0.3.2
	tracing-core@0.1.30
	tracing@0.1.37
	try-lock@0.2.4
	unicase@2.6.0
	unicode-bidi@0.3.8
	unicode-ident@1.0.6
	unicode-normalization@0.1.22
	unicode-width@0.1.10
	untrusted@0.7.1
	url@1.7.2
	url@2.3.1
	uuid@1.2.2
	version_check@0.9.4
	want@0.3.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasi@0.9.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.83
	wasm-bindgen-macro-support@0.2.83
	wasm-bindgen-macro@0.2.83
	wasm-bindgen-shared@0.2.83
	wasm-bindgen@0.2.83
	web-sys@0.3.60
	webpki@0.22.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.42.0
	windows_aarch64_gnullvm@0.42.0
	windows_aarch64_msvc@0.42.0
	windows_i686_gnu@0.42.0
	windows_i686_msvc@0.42.0
	windows_x86_64_gnu@0.42.0
	windows_x86_64_gnullvm@0.42.0
	windows_x86_64_msvc@0.42.0
	xattr@0.2.3
	yup-oauth2@8.1.0
"

declare -A GIT_CRATES=(
	[google-apis-common]='https://github.com/prasmussen/google-apis-rs;1f75444516a3bbba3441ee6ff65d6aa0f2d2f1af;google-apis-rs-%commit%/google-apis-common'
	[google-drive3]='https://github.com/prasmussen/google-apis-rs;1f75444516a3bbba3441ee6ff65d6aa0f2d2f1af;google-apis-rs-%commit%/gen/drive3'
)

inherit cargo

DESCRIPTION="Google Drive CLI Client"
HOMEPAGE="https://github.com/glotlabs/gdrive"
SRC_URI="
	https://github.com/glotlabs/gdrive/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD-2 BSD ISC MIT MPL-2.0 Unicode-DFS-2016"
# ring crate
LICENSE+=" openssl ISC MIT"
# webpki crate
LICENSE+=" ISC"
SLOT="0"
KEYWORDS="~amd64 ~arm64"

pkg_postinst() {
	einfo "See basic usage at https://github.com/glotlabs/gdrive/blob/main/docs/basic_usage.md"
	einfo "If you are unhappy with gdrive - you can try https://packages.gentoo.org/packages/net-misc/rclone"
}
