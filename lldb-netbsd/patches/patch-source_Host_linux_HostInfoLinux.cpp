$NetBSD$

--- source/Host/linux/HostInfoLinux.cpp.orig	2016-12-17 10:30:35.000000000 +0000
+++ source/Host/linux/HostInfoLinux.cpp
@@ -19,6 +19,7 @@
 #include <mutex> // std::once
 
 using namespace lldb_private;
+using namespace llvm;
 
 namespace {
 struct HostInfoLinuxFields {
@@ -44,8 +45,8 @@ uint32_t HostInfoLinux::GetMaxThreadName
 bool HostInfoLinux::GetOSVersion(uint32_t &major, uint32_t &minor,
                                  uint32_t &update) {
   static bool success = false;
-  static std::once_flag g_once_flag;
-  std::call_once(g_once_flag, []() {
+  LLVM_DEFINE_ONCE_FLAG(g_once_flag);
+  llvm::call_once(g_once_flag, []() {
 
     struct utsname un;
     if (uname(&un) == 0) {
@@ -100,8 +101,8 @@ bool HostInfoLinux::GetOSKernelDescripti
 llvm::StringRef HostInfoLinux::GetDistributionId() {
   // Try to run 'lbs_release -i', and use that response
   // for the distribution id.
-  static std::once_flag g_once_flag;
-  std::call_once(g_once_flag, []() {
+  LLVM_DEFINE_ONCE_FLAG(g_once_flag);
+  llvm::call_once(g_once_flag, []() {
 
     Log *log(lldb_private::GetLogIfAllCategoriesSet(LIBLLDB_LOG_HOST));
     if (log)
