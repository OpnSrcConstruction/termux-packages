TERMUX_PKG_HOMEPAGE=https://github.com/sqlcipher/sqlcipher
TERMUX_PKG_DESCRIPTION="SQLCipher is an SQLite extension that provides 256 bit AES encryption of database files"
TERMUX_PKG_LICENSE="BSD"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="4.5.6"
TERMUX_PKG_SRCURL=https://github.com/sqlcipher/sqlcipher/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=e4a527e38e67090c1d2dc41df28270d16c15f7ca5210a3e7ec4c4b8fda36e28f
TERMUX_PKG_DEPENDS="libedit, openssl"
TERMUX_PKG_BUILD_DEPENDS="tcl"
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_TAG_TYPE="newest-tag"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--enable-tempstore=yes
--with-tcl=${TERMUX_PREFIX}/lib
TCLLIBDIR=${TERMUX_PREFIX}/lib/tcl8.6/sqlite
"

termux_step_pre_configure() {
	CPPFLAGS+=" -DSQLITE_HAS_CODEC"
}
