# $NetBSD$

BUILD_DIRS=	gb.gtk3
GB_DEPENDS=	gambas3-gb-image
.include "../../wip/gambas3/Makefile.common"

PKGNAME=	gambas3-gb-gtk3-${GB_VERSION}
MAINTAINER=	bastiangermann@fishpost.de
COMMENT=	GTK+ 3 toolkit implementation for Gambas

.include "../../graphics/cairo/buildlink3.mk"
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libICE/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
