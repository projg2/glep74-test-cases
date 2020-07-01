# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: -developer

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast combinator parsing for bytestrings and text"
HOMEPAGE="https://github.com/bos/attoparsec"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/scientific-0.3.1:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroups-0.16.1:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-1.1.1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2.7
		dev-haskell/quickcheck-unicode
		>=dev-haskell/tasty-0.11
		>=dev-haskell/tasty-quickcheck-0.8
		dev-haskell/vector )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer
}