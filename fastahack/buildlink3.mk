# $NetBSD$

BUILDLINK_TREE+=	fastahack

.if !defined(FASTAHACK_BUILDLINK3_MK)
FASTAHACK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.fastahack+=	fastahack>=0.0.0.20160702
BUILDLINK_PKGSRCDIR.fastahack?=		../../wip/fastahack
.endif	# FASTAHACK_BUILDLINK3_MK

BUILDLINK_TREE+=	-fastahack
