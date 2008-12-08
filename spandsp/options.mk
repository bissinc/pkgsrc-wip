# $NetBSD: options.mk,v 1.1.1.2 2008/12/08 22:13:25 x400 Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.spandsp
PKG_SUPPORTED_OPTIONS=	mmx sse

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mmmx)
CONFIGURE_ARGS+=	--enable-mmx
.endif

.if !empty(PKG_OPTIONS:Msse)
CONFIGURE_ARGS+=	--enable-sse
.endif
