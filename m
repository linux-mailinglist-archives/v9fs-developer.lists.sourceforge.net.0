Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBFC50BF4C
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Apr 2022 20:03:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nhxcl-0000o7-Vy; Fri, 22 Apr 2022 18:03:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <qemu_oss@crudebyte.com>) id 1nhxck-0000o0-EJ
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Apr 2022 18:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XRgs5dgoBGBDr9oS5MRbFhujpNneuzIzg2K4+SgByuA=; b=IUfOtCwDbUuhtamgvEEuQi/wx6
 kGxXa34wG488rqoD3g7CWONSgjHKUiTuV7OYUdH7Wv0/pV+5q9c6Lv4gDkosSq4OZpZK2VegD1muy
 rm+22VnH8rPA3MDtQ2vGnyZwMdpbVqEuJaPdqeoSA2v/8WE8EzJs3qc1J59K7PNC9luE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XRgs5dgoBGBDr9oS5MRbFhujpNneuzIzg2K4+SgByuA=; b=b
 aXl3qZ13Qj8GLXo7NgALz/zGu5QCGFnXlZNKaWfB1wGm7f8qij7Tq7S54FoEuI0b9ZqYhFanKEqEb
 ai7T2Kc8he/zLo5dyv47ITbIFHqwiaSHu1gRnfHoLySizJ82rkFEiAzXrSZ8gKstdm/cyKM2PBZC3
 BoaMkPciHzAYQQXQ=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nhxcf-006l9Y-15
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Apr 2022 18:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:Message-ID:Date:Subject:Cc:To:From:References:In-Reply-To:
 Content-ID:Content-Description;
 bh=XRgs5dgoBGBDr9oS5MRbFhujpNneuzIzg2K4+SgByuA=; b=LTDQ4JRHSj7PS7jOvG31dv/Q7W
 ZB5cT+8p9nbf0eUz5yz+8PNMcOu8i0/sHYrLMr3C/t55uXOeknvcQDdlGTXTeMpLgihR40eBAQrJl
 P8l8Yv+c2+K3v1qKaaDgvgjT/zsxA/Gt8AP0vETbSgpH+/Oypsirx7HCyP9w9S5r9Ny+XmwPHYsPh
 OD0V3dy2DL0UwsPda7DPkigL/etquLdpVrlB4a09h5JMZbQruEXzTWncpVrqar8Pu+2lSR9If/7vj
 6Sfamqo8kSVgsRbeLyTkBYnX6ubInNVSO4lRPybZO0yubOK1HC2gLVQOlrVaDga2fNKMRVP8a1TwZ
 a5O+Mt7SbmZCZ5whMbAq6J/sbt3uRetJNum0op4p4Znw31xcjBGhLnzh6SjDFFt3BbvYihp6cKqn7
 dkTGuC1GoUabk3W6/3J1KoJHonNV04yf5QB93sTVhwRrcZxIdWrKbEz6Z4ct2yZuBSshH8WGtUbiz
 nHkhgpU2Sp4VB5Nd4X/4W4aZjSWomDcCPXUPtxBntMzd5yZ2VuUorQlLZkeLD+smipJlYjfUoGSJz
 jOZzjLoKQXDyvGhRGNtsJdM0GXy9JXuSlLg+kwYpj7/s3+tMQV1MB6hBmAYF+UHfpIB3b4kVxThdl
 Ha2e37FPpqkbh9tzHmQsXrvnrM6fckHGNMhBwlTnM=;
To: qemu-devel@nongnu.org
Date: Fri, 22 Apr 2022 20:02:46 +0200
Message-ID: <1757498.AyhHxzoH2B@silver>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Now that 9p support for macOS hosts just landed in QEMU 7.0
 and with support for Windows hosts on the horizon [1], the question is how
 to deal with case- insensitive host filesystems, which are very c [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1nhxcf-006l9Y-15
Subject: [V9fs-developer] [RFC PATCH] 9p: case-insensitive host filesystems
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <qemu_oss@crudebyte.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 netdev@vger.kernel.org, Greg Kurz <groug@kaod.org>,
 linux-kernel@vger.kernel.org, Keno Fischer <keno@juliacomputing.com>,
 Michael Roitzsch <reactorcontrol@icloud.com>, Will Cohen <wwcohen@gmail.com>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Now that 9p support for macOS hosts just landed in QEMU 7.0 and with support 
for Windows hosts on the horizon [1], the question is how to deal with case-
insensitive host filesystems, which are very common on those two systems?

I made some tests, e.g. trying to setup a 9p root fs Linux installation on a 
macOS host as described in the QEMU HOWTO [2], which at a certain point causes 
the debootstrap script to fail when trying to unpack the 'libpam-runtime' 
package. That's because it would try to create this symlink:

  /usr/share/man/man7/PAM.7.gz -> /usr/share/man/man7/pam.7.gz

which fails with EEXIST on a case-insensitive APFS. Unfortunately you can't 
easily switch an existing APFS partition to case-sensitivity. It requires to 
reformat the entire partition, loosing all your data, etc.

So I did a quick test with QEMU as outlined below, trying to simply let 9p 
server "eat" EEXIST errors in such cases, but then I realized that most of the 
time it would not even come that far, as Linux client would first send a 
'Twalk' request to check whether target symlink entry already exists, and as 
it gets a positive response from 9p server (again, due to case-insensitivity) 
client would stop right there without even trying to send a 'Tsymlink' 
request.

So maybe it's better to handle case-insensitivity entirely on client side? 
I've read that some generic "case fold" code has landed in the Linux kernel 
recently that might do the trick?

Should 9p server give a hint to 9p client that it's a case-insensitive fs? And 
if yes, once per entire exported fs or rather for each directory (as there 
might be submounts on host)?

[1] https://lore.kernel.org/all/20220408171013.912436-1-bmeng.cn@gmail.com/
[2] https://wiki.qemu.org/Documentation/9p_root_fs

---
 hw/9pfs/9p-local.c | 54 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 54 insertions(+)

diff --git a/hw/9pfs/9p-local.c b/hw/9pfs/9p-local.c
index d42ce6d8b8..d6cb45c758 100644
--- a/hw/9pfs/9p-local.c
+++ b/hw/9pfs/9p-local.c
@@ -39,6 +39,10 @@
 #endif
 #endif
 #include <sys/ioctl.h>
+#ifdef CONFIG_DARWIN
+#include <glib.h>
+#include <glib/gprintf.h>
+#endif
 
 #ifndef XFS_SUPER_MAGIC
 #define XFS_SUPER_MAGIC  0x58465342
@@ -57,6 +61,18 @@ typedef struct {
     int mountfd;
 } LocalData;
 
+#ifdef CONFIG_DARWIN
+
+/* Compare strings case-insensitive (assuming UTF-8 encoding). */
+static int p9_stricmp(const char *a, const char *b)
+{
+    g_autofree gchar *cia = g_utf8_casefold(a, -1);
+    g_autofree gchar *cib = g_utf8_casefold(b, -1);
+    return g_utf8_collate(cia, cib);
+}
+
+#endif
+
 int local_open_nofollow(FsContext *fs_ctx, const char *path, int flags,
                         mode_t mode)
 {
@@ -931,6 +947,25 @@ static int local_symlink(FsContext *fs_ctx, const char 
*oldpath,
                fs_ctx->export_flags & V9FS_SM_NONE) {
         err = symlinkat(oldpath, dirfd, name);
         if (err) {
+#if CONFIG_DARWIN
+            if (errno == EEXIST) {
+                printf("  -> symlinkat(oldpath='%s', dirfd=%d, name='%s') = 
EEXIST\n", oldpath, dirfd, name);
+            }
+            if (errno == EEXIST &&
+                strcmp(oldpath, name) && !p9_stricmp(oldpath, name))
+            {
+                struct stat st1, st2;
+                const int cur_errno = errno;
+                if (!fstatat(dirfd, oldpath, &st1, AT_SYMLINK_NOFOLLOW) &&
+                    !fstatat(dirfd, name, &st2, AT_SYMLINK_NOFOLLOW) &&
+                    st1.st_dev == st2.st_dev && st1.st_ino == st2.st_ino)
+                {
+                    printf("  -> iCASE SAME\n");
+                    err = 0;
+                }
+                errno = cur_errno;
+            }
+#endif
             goto out;
         }
         err = fchownat(dirfd, name, credp->fc_uid, credp->fc_gid,
@@ -983,6 +1018,25 @@ static int local_link(FsContext *ctx, V9fsPath *oldpath,
 
     ret = linkat(odirfd, oname, ndirfd, name, 0);
     if (ret < 0) {
+#if CONFIG_DARWIN
+        if (errno == EEXIST) {
+            printf("  -> linkat(odirfd=%d, oname='%s', ndirfd=%d, name='%s') 
= EEXIST\n", odirfd, oname, ndirfd, name);
+        }
+        if (errno == EEXIST &&
+            strcmp(oname, name) && !p9_stricmp(oname, name))
+        {
+            struct stat st1, st2;
+            const int cur_errno = errno;
+            if (!fstatat(odirfd, oname, &st1, AT_SYMLINK_NOFOLLOW) &&
+                !fstatat(ndirfd, name, &st2, AT_SYMLINK_NOFOLLOW) &&
+                st1.st_dev == st2.st_dev && st1.st_ino == st2.st_ino)
+            {
+                printf("  -> iCASE SAME\n");
+                ret = 0;
+            }
+            errno = cur_errno;
+        }
+#endif
         goto out_close;
     }
 
-- 
2.32.0 (Apple Git-132)






_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
