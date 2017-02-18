# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit user golang-build git-r3

EGO_PN="github.com/google/seesaw/..."

KEYWORDS="~amd64"

DESCRIPTION="Seesaw v2 is a Linux Virtual Server (LVS) based load balancing platform"
HOMEPAGE="https://github.com/google/seesaw"
EGIT_REPO_URI="${HOMEPAGE}"

LICENSE="Apache-2.0"
SLOT="0"
IUSE="anycast"

DEPEND="
	dev-libs/libnl
	anycast? ( net-misc/quagga[protobuf] )
"
RDEPEND="
	anycast? ( net-misc/quagga[protobuf] )
"

RESTRICT="test"


