$NetBSD$

--- gdb/aarch64-nbsd-tdep.h.orig	2019-09-02 20:02:23.494326453 +0000
+++ gdb/aarch64-nbsd-tdep.h
@@ -0,0 +1,33 @@
+/* NetBSD/aarch64 target support, prototypes.
+
+   Copyright (C) 2017-2018 Free Software Foundation, Inc.
+
+   This file is part of GDB.
+
+   This program is free software; you can redistribute it and/or modify
+   it under the terms of the GNU General Public License as published by
+   the Free Software Foundation; either version 3 of the License, or
+   (at your option) any later version.
+
+   This program is distributed in the hope that it will be useful,
+   but WITHOUT ANY WARRANTY; without even the implied warranty of
+   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+   GNU General Public License for more details.
+
+   You should have received a copy of the GNU General Public License
+   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */
+
+#include "regset.h"
+
+/* The general-purpose regset consists of 31 registers (30 X , plus LR), SP,
+   ELR (PC), SPSR register, and TPIDR.  SPSR is 32 bits but the structure is
+   passed to 64 bit alignment.  */
+#define AARCH64_NBSD_SIZEOF_GREGSET  (35 * X_REGISTER_SIZE)
+
+/* The fp regset consists of 32 V registers, plus FPSR and FPCR which
+   are 4 bytes wide each, and the whole structure is padded to 128 bit
+   alignment.  */
+#define AARCH64_NBSD_SIZEOF_FPREGSET (33 * V_REGISTER_SIZE)
+
+extern const struct regset aarch64_nbsd_gregset;
+extern const struct regset aarch64_nbsd_fpregset;
