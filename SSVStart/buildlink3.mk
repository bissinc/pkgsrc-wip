# $NetBSD$

BUILDLINK_TREE+=	SSVStart

.if !defined(SSVSTART_BUILDLINK3_MK)
SSVSTART_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.SSVStart+=	SSVStart>=20130714
BUILDLINK_PKGSRCDIR.SSVStart?=		../../wip/SSVStart

BUILDLINK_FILES.SSVStart+=		lib/cmake/FindSSVStart.cmake

.endif	# SSVSTART_BUILDLINK3_MK

BUILDLINK_TREE+=	-SSVStart
