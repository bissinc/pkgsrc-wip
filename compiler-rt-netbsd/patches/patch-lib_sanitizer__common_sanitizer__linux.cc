$NetBSD$

--- lib/sanitizer_common/sanitizer_linux.cc.orig	2018-05-04 08:00:15.553459333 +0000
+++ lib/sanitizer_common/sanitizer_linux.cc
@@ -93,6 +93,7 @@ extern "C" {
 
 #if SANITIZER_NETBSD
 #include <limits.h>  // For NAME_MAX
+#define sysctl _sysctl
 #include <sys/sysctl.h>
 #include <sys/exec.h>
 extern struct ps_strings *__ps_strings;
