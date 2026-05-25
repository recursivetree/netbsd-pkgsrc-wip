$NetBSD$

$NetBSD$

UNIX AND NOT APPLE does not imply we are a linux system. Instead, fall back to
the apple path on NetBSD.


--- CMake/FindLibzip.cmake.orig	2026-05-25 17:27:28.576514792 +0000
+++ CMake/FindLibzip.cmake
@@ -36,7 +36,7 @@ else(WIN32)
     NAMES zipconf.h
     HINTS ${PC_LIBZIP_INCLUDE_DIRS})
 
-  if(UNIX AND NOT APPLE)
+  if(LINUX)
     find_library(LIBZIP_LIBRARY
       NAMES libzip.a zip
       PATHS
