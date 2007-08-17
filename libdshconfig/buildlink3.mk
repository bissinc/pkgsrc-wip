# $NetBSD: buildlink3.mk,v 1.3 2007/08/17 13:41:44 shindenmorr Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBDSHCONFIG_BUILDLINK3_MK:=	${LIBDSHCONFIG_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	libdshconfig
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibdshconfig}
BUILDLINK_PACKAGES+=	libdshconfig
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libdshconfig

.if ${LIBDSHCONFIG_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.libdshconfig+=	libdshconfig>=0.20.9
BUILDLINK_DEPMETHOD.libdshconfig?=	build
BUILDLINK_PKGSRCDIR.libdshconfig?=	../../wip/libdshconfig
.endif	# LIBDSHCONFIG_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
