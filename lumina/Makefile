# $NetBSD$
VERSION=	1.2.0-p1
PKGREVISION=	3
PKGNAME=	lumina-1.2.0
DISTNAME=	lumina-${VERSION}
DIST_SUBDIR=	lumina
CATEGORIES=	x11
GITHUB_PROJECT=	lumina
MASTER_SITES=	${MASTER_SITE_GITHUB:=trueos/}
GITHUB_TAG=	v${VERSION}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://lumina-desktop.org/
COMMENT=	Lumina Desktop Environment
LICENSE=	modified-bsd

USE_LANGUAGES=	c c++

USE_LIBTOOL=	yes

EGDIR=		${PREFIX}/share/examples/lumina
CONF_FILES+=	${EGDIR}/luminaDesktop.conf ${PKG_SYSCONFDIR}/luminaDesktop.conf

DEPENDS+=	fluxbox-[0-9]*:../../wm/fluxbox
DEPENDS+=	oxygen-icons-[0-9]*:../../graphics/oxygen-icons
DEPENDS+=	xscreensaver-[0-9]*:../../x11/xscreensaver
DEPENDS+=	numlockx-[0-9]*:../../x11/numlockx
DEPENDS+=	libxcb-[0-9]*:../../x11/libxcb
DEPENDS+=	libXdamage-[0-9]*:../../x11/libXdamage

INSTALL_MAKE_FLAGS=		INSTALL_ROOT=${DESTDIR}

MAKE_ENV+=	LFLAGS=${LDFLAGS:Q}

.include "options.mk"


pre-build:
	${RUN} cd ${WRKSRC} && ${QTDIR}/bin/qmake PREFIX=${PREFIX} CONFIG+="configure WITH_I18N" ${EXTRA}

pre-install:
	${RUN} ${INSTALL_DATA_DIR} ${DESTDIR}${EGDIR}
	${RUN} ${INSTALL_DATA} ${WRKSRC}/src-qt5/core/lumina-desktop/defaults/luminaDesktop.conf ${DESTDIR}${EGDIR}

post-install:
	${RM} -f ${DESTDIR}${PREFIX}/share/lumina-desktop/menu-scripts/ls.json.sh.orig

.include "../../x11/libXdamage/buildlink3.mk"
# for libxcb-xinput
BUILDLINK_ABI_DEPENDS.libxcb+=	libxcb>=1.12nb1
.include "../../x11/libxcb/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/qt5-qttools/buildlink3.mk"
.include "../../x11/qt5-qtx11extras/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../x11/qt5-qtmultimedia/buildlink3.mk"
.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.include "../../x11/qt5-qtsvg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
