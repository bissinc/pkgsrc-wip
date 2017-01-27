$NetBSD$

--- source/Host/common/Editline.cpp.orig	2016-12-17 10:30:38.000000000 +0000
+++ source/Host/common/Editline.cpp
@@ -24,6 +24,7 @@
 
 using namespace lldb_private;
 using namespace lldb_private::line_editor;
+using namespace llvm;
 
 // Workaround for what looks like an OS X-specific issue, but other platforms
 // may benefit from something similar if issues arise.  The libedit library
@@ -1160,8 +1161,8 @@ Editline::Editline(const char *editline_
     if (term_fd != -1) {
       static std::mutex *g_init_terminal_fds_mutex_ptr = nullptr;
       static std::set<int> *g_init_terminal_fds_ptr = nullptr;
-      static std::once_flag g_once_flag;
-      std::call_once(g_once_flag, [&]() {
+      LLVM_DEFINE_ONCE_FLAG(g_once_flag);
+      llvm::call_once(g_once_flag, [&]() {
         g_init_terminal_fds_mutex_ptr =
             new std::mutex(); // NOTE: Leak to avoid C++ destructor chain issues
         g_init_terminal_fds_ptr = new std::set<int>(); // NOTE: Leak to avoid
