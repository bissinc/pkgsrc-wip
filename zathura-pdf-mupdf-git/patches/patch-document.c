$NetBSD: patch-document.c,v 1.4 2017/01/31 10:12:02 leot Exp $

- Correct the glib-2.0 include header file path.

--- zathura-pdf-mupdf/document.c.orig	2018-03-17 19:47:01.000000000 +0000
+++ zathura-pdf-mupdf/document.c
@@ -3,7 +3,7 @@
 #include <mupdf/fitz.h>
 #include <mupdf/pdf.h>
 
-#include <glib-2.0/glib.h>
+#include <glib.h>
 
 #include "plugin.h"
 
