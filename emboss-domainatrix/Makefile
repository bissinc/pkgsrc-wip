# $NetBSD: Makefile,v 1.3 2012/09/02 11:14:10 noud4 Exp $
#

.include "../emboss-base/Makefile.common"
.include "../emboss/Makefile.common"

DISTNAME=	DOMAINATRIX-1.0.0
PKGNAME=	emboss-domainatrix-1.0.0
PKGREVISION=	1

COMMENT=	Collection of bioinformatic programs for EMBOSS
LICENSE=	gnu-gpl-v2

BUILD_TARGET=	#empty
DIST_SUBDIR=	emboss/domainatrix-1.0.0-20040715

pre-configure:
	${SED} -e 's|../../../plplot/libplplot.la|${PREFIX}/lib/libplplot.la|' \
	       -e 's|../../../ajax/libajaxg.la|${PREFIX}/lib/libajaxg.la|' \
	       -e 's|../../../ajax/libajax.la|${PREFIX}/lib/libajax.la|' \
	       -e 's|../../../nucleus/libnucleus.la|${PREFIX}/lib/libnucleus.la|' \
	       -e 's|/../../depcomp|/depcomp|' \
	       -e 's|@INCLUDE@|${PREFIX}/include/emboss|' \
	       -e 's|@X116@|-Wl,-R${X11BASE}/lib|' \
	       ${WRKSRC}/src/Makefile.in > ${WRKSRC}/src/Makefile.in.bak
	${MV} ${WRKSRC}/src/Makefile.in.bak ${WRKSRC}/src/Makefile.in

.include "../../mk/bsd.pkg.mk"
