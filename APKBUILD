# Maintainer: Viktor Stanchev <alpine@viktorstanchev.com>
pkgname=pigeonhole
pkgver=0.4.12
pkgrel=1
pkgdesc="Sieve implementation for Dovecot"
url="http://pigeonhole.dovecot.org/"
arch="all"
license="LGPL"
depends="dovecot"
depends_dev="dovecot-dev"
makedepends="${depends_dev} autoconf libtool make openssl-dev bash"
subpackages="$pkgname-dev $pkgname-doc"
source="http://pigeonhole.dovecot.org/releases/2.2/dovecot-2.2-pigeonhole-${pkgver}.tar.gz"

_builddir="$srcdir"/dovecot-2.2-pigeonhole-${pkgver}

build() {
    cd "$_builddir"
    ./configure --prefix=/usr --with-dovecot=/usr/lib/dovecot || return 1
    make || return 1
}

package() {
    cd "$_builddir"
    make DESTDIR="$pkgdir" install || return 1
}

md5sums="eb96e65be62c71f987a3b5ad2d782b7b  dovecot-2.2-pigeonhole-0.4.12.tar.gz"
sha256sums="98a2fd79b0d9effd08c0caf04d483b1caa5e4503dae811e6d436948557bfb702  dovecot-2.2-pigeonhole-0.4.12.tar.gz"
sha512sums="68b2bcc8bd2a8c039ff116a441ff8795917b280f89ad60819638d5903010611bbd5966567d0d33ae305f9ae4db9f6756b2a72ccd8305124cfe846d64bbdd08c5  dovecot-2.2-pigeonhole-0.4.12.tar.gz"
