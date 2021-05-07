Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC757376D90
	for <lists+v9fs-developer@lfdr.de>; Sat,  8 May 2021 01:59:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lfANt-00033m-39; Fri, 07 May 2021 23:59:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <changbin.du@gmail.com>) id 1lfANr-00033b-Td
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 23:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vq0vfi1SgCIyTIGmWeitNl8mteZEPTqt/c9n5eHH7rU=; b=asyzXRoqn1jqveeWfW8l0aqo8z
 4naLXNT6IaI3c6IhXPN3O3i8RvpazHzYCmnNbpFgrPXsFOUiBd+gY+CqXJ3vA7HX9fZNNM6g2D2oi
 uk5f4FpaE5/BG7x7UcV5nziCvxNKSlP1zKBRWceoKlfW3JkvOy+FI3OuDYtMC1Zs3LFY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Vq0vfi1SgCIyTIGmWeitNl8mteZEPTqt/c9n5eHH7rU=; b=QnG3lFc46qGBHXb2sp4bVvpn/8
 PcD+Q4s8LZ9zL/v0RJIfrRL8t17lF9MQRWcYdDnIsedoL8xTNLCIS38nLajvciaro1iQpHuGqLdVx
 netT9YGN7b7gba6ARG/Zu7u55nky68aOqnjVVMSuvHkjkA/QmQdO5d4ljeweDOVLwX8o=;
Received: from mail-pf1-f170.google.com ([209.85.210.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lfANm-00BYJe-LF
 for v9fs-developer@lists.sourceforge.net; Fri, 07 May 2021 23:59:53 +0000
Received: by mail-pf1-f170.google.com with SMTP id v191so8982729pfc.8
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 07 May 2021 16:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vq0vfi1SgCIyTIGmWeitNl8mteZEPTqt/c9n5eHH7rU=;
 b=IhyziSZQ4ypwMLP+dSwISd1a+B7hUoSEio89y3+YwezGAslhP1Oq2s7V5wi3SQ1IgX
 eSFFlk/qqHL0gGbp4pejQEPw2pZ9CCJX0xFfC/FeNFY1Nb3cHrD7SZ/Zp4jguHbDcQaB
 tnBiqYviNo/gAdGV65CXp9kRMi+Ek7CXnqaW97F4bF52EjvCnbFZukq8Of0d8Fx8xfzx
 rImgej8TXPZBpAnkP5+nh+mEFFKGVZWB9OovJ2D/JdY2+YJxAHX3AC8agKEdjL4WktY9
 2QtCT1vxb+HmtETJLRrZSGF9bL8EeS2K3xYynZhZJuNzDarnRkEBdeNLGHOQF1Yg+B9a
 KjTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vq0vfi1SgCIyTIGmWeitNl8mteZEPTqt/c9n5eHH7rU=;
 b=OkAv32YOdf9YGyFJ9kHRKiTvzyvuwbfSnahIYMelzQMeD19cmk7oSexfrsy0BjXqoy
 lP7NOUvFXHLEaVB9YedTy4TqkM4/77HMO6FMDS3tdhug+4ZwkVOIhQFd7J7bUk30BAvC
 jAB/IoaUlNxYEjqJ6aDjdkOX79bb5KgZZywTA+39dunT5oWg7uwmIkQoSPObdCfnQhcr
 J4eLgPjhbZEQCO1lPWUipfzan7E++f25sOuWAgQuWHLR5JOVPIgCeLJ9ki+RgqSDPfXB
 A5zu4npujkAfwEYp0KwrRCRM/HxlcMB5j3efc2uSzY0Dg8p3g8IR18fMH6lmCquislER
 TPBA==
X-Gm-Message-State: AOAM532g6RG5b29ZeMyxTjOi8WRw4k6S7ftFb0iY2DP6BHJfYYlDKeUM
 ddInNWq73AZ6M8VP0Fp+YjlAz/7aMyjX6Q==
X-Google-Smtp-Source: ABdhPJzqsfyaNX1biORyxBVZsvhzwH/9TfL3/5kiX4jZO24Bq2wa879RKEfH/hpDGd5/zM+Fl2ZmrQ==
X-Received: by 2002:a63:6486:: with SMTP id
 y128mr12602077pgb.414.1620431981121; 
 Fri, 07 May 2021 16:59:41 -0700 (PDT)
Received: from WRT-WX9.. ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id g18sm5700449pfb.178.2021.05.07.16.59.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 16:59:40 -0700 (PDT)
From: Changbin Du <changbin.du@gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>
Date: Sat,  8 May 2021 07:58:40 +0800
Message-Id: <20210507235842.16796-2-changbin.du@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210507235842.16796-1-changbin.du@gmail.com>
References: <20210507235842.16796-1-changbin.du@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lfANm-00BYJe-LF
Subject: [V9fs-developer] [PATCH v2 1/3] 9p: add support for root file
 systems
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
Cc: linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, "Enrico Weigelt,
 metux IT consult" <lkml@metux.net>, v9fs-developer@lists.sourceforge.net,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This introduces a new kernel command-line option called 'v9fsroot='
which will tell the kernel to mount the root file system by
utilizing the 9p protocol.

This allows us to mount host folder as rootfs for guest linux in qemu.
Bellow is an example which mounts v9fs with tag 'r' as rootfs in qemu
guest via virtio transport.

  $ qemu-system-x86_64 -enable-kvm -cpu host -m 1024 \
      -virtfs local,path=$rootfs_dir,mount_tag=r,security_model=passthrough,id=r \
      -kernel /path/to/linux/arch/x86/boot/bzImage -nographic \
      -append "root=/dev/v9fs v9fsroot=r,trans=virtio rw console=ttyS0 3"

Signed-off-by: Changbin Du <changbin.du@gmail.com>

---
v2:
  o use pr_err instead of printk.
  o ROOT_DEV is only set after checking.
  o cleanup DEFAULT_MNT_OPTS.
  o do not retry mount for fd and virtio transport.
---
 MAINTAINERS              |  5 ++++
 fs/9p/Kconfig            |  6 ++++
 fs/9p/Makefile           |  1 +
 fs/9p/v9fsroot.c         | 64 ++++++++++++++++++++++++++++++++++++++++
 include/linux/root_dev.h |  1 +
 init/do_mounts.c         | 54 +++++++++++++++++++++++++++++++++
 6 files changed, 131 insertions(+)
 create mode 100644 fs/9p/v9fsroot.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 65d200e6e68b..c9f9c89bad13 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -239,6 +239,11 @@ F:	include/trace/events/9p.h
 F:	include/uapi/linux/virtio_9p.h
 F:	net/9p/
 
+9P FILE SYSTEM ROOTFS SUPPORT
+R:	Changbin Du <changbin.du@gmail.com>
+S:	Supported
+F:	fs/9p/v9fsroot.c
+
 A8293 MEDIA DRIVER
 M:	Antti Palosaari <crope@iki.fi>
 L:	linux-media@vger.kernel.org
diff --git a/fs/9p/Kconfig b/fs/9p/Kconfig
index 09fd4a185fd2..71c5a49f9a27 100644
--- a/fs/9p/Kconfig
+++ b/fs/9p/Kconfig
@@ -42,3 +42,9 @@ config 9P_FS_SECURITY
 
 	  If you are not using a security module that requires using
 	  extended attributes for file security labels, say N.
+
+config 9P_FS_ROOT
+	bool "9p root file system"
+	depends on 9P_FS=y
+	help
+	  Enables root file system support over 9p protocol.
diff --git a/fs/9p/Makefile b/fs/9p/Makefile
index e7800a5c7395..bc2a4ef10049 100644
--- a/fs/9p/Makefile
+++ b/fs/9p/Makefile
@@ -15,3 +15,4 @@ obj-$(CONFIG_9P_FS) := 9p.o
 
 9p-$(CONFIG_9P_FSCACHE) += cache.o
 9p-$(CONFIG_9P_FS_POSIX_ACL) += acl.o
+9p-$(CONFIG_9P_FS_ROOT) += v9fsroot.o
diff --git a/fs/9p/v9fsroot.c b/fs/9p/v9fsroot.c
new file mode 100644
index 000000000000..6c9f7e335c1a
--- /dev/null
+++ b/fs/9p/v9fsroot.c
@@ -0,0 +1,64 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * 9p root file system support
+ *
+ * Copyright (c) 2021 Changbin Du <changbin.du@gmail.com>
+ */
+#include <linux/init.h>
+#include <linux/fs.h>
+#include <linux/types.h>
+#include <linux/ctype.h>
+#include <linux/string.h>
+#include <linux/root_dev.h>
+#include <linux/kernel.h>
+
+static char root_dev[2048] __initdata = "";
+static char root_opts[1024] __initdata = "";
+
+/* v9fsroot=<path>[,options] */
+static int __init v9fs_root_setup(char *line)
+{
+	char *s;
+	int len;
+
+	if (strlen(line) >= 1) {
+		/* make s point to ',' or '\0' at end of line */
+		s = strchrnul(line, ',');
+		/* len is strlen(unc) + '\0' */
+		len = s - line + 1;
+		if (len > sizeof(root_dev)) {
+			pr_err("Root-V9FS: path too long\n");
+			return 1;
+		}
+		strscpy(root_dev, line, len);
+
+		if (*s) {
+			int n = snprintf(root_opts,
+					 sizeof(root_opts), "%s",
+					 s + 1);
+			if (n >= sizeof(root_opts)) {
+				pr_err("Root-V9FS: mount options string too long\n");
+				root_opts[sizeof(root_opts)-1] = '\0';
+				return 1;
+			}
+		}
+	}
+
+	ROOT_DEV = Root_V9FS;
+	return 1;
+}
+
+__setup("v9fsroot=", v9fs_root_setup);
+
+int __init v9fs_root_data(char **dev, char **opts)
+{
+	if (!root_dev[0]) {
+		pr_err("Root-V9FS: no rootdev specified\n");
+		return -1;
+	}
+
+	*dev = root_dev;
+	*opts = root_opts;
+
+	return 0;
+}
diff --git a/include/linux/root_dev.h b/include/linux/root_dev.h
index 4e78651371ba..becd0ee2ff87 100644
--- a/include/linux/root_dev.h
+++ b/include/linux/root_dev.h
@@ -9,6 +9,7 @@
 enum {
 	Root_NFS = MKDEV(UNNAMED_MAJOR, 255),
 	Root_CIFS = MKDEV(UNNAMED_MAJOR, 254),
+	Root_V9FS = MKDEV(UNNAMED_MAJOR, 253),
 	Root_RAM0 = MKDEV(RAMDISK_MAJOR, 0),
 	Root_RAM1 = MKDEV(RAMDISK_MAJOR, 1),
 	Root_FD0 = MKDEV(FLOPPY_MAJOR, 0),
diff --git a/init/do_mounts.c b/init/do_mounts.c
index a78e44ee6adb..3f18be0dea0e 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -287,6 +287,8 @@ dev_t name_to_dev_t(const char *name)
 		return Root_NFS;
 	if (strcmp(name, "/dev/cifs") == 0)
 		return Root_CIFS;
+	if (strcmp(name, "/dev/v9fs") == 0)
+		return Root_V9FS;
 	if (strcmp(name, "/dev/ram") == 0)
 		return Root_RAM0;
 #ifdef CONFIG_BLOCK
@@ -536,6 +538,51 @@ static int __init mount_cifs_root(void)
 }
 #endif
 
+#ifdef CONFIG_9P_FS_ROOT
+
+extern int v9fs_root_data(char **dev, char **opts);
+
+#define V9FSROOT_TIMEOUT_MIN	5
+#define V9FSROOT_TIMEOUT_MAX	30
+#define V9FSROOT_RETRY_MAX	5
+
+static bool v9fs_need_retry(char *mount_opts)
+{
+	if (strstr(mount_opts, "trans=virtio") || strstr(mount_opts, "trans=fd"))
+		return false;
+	return true;
+}
+
+static int __init mount_v9fs_root(void)
+{
+	char *root_dev, *root_data;
+	unsigned int timeout;
+	int try, err;
+
+	err = v9fs_root_data(&root_dev, &root_data);
+	if (err != 0)
+		return 0;
+
+	timeout = V9FSROOT_TIMEOUT_MIN;
+	for (try = 1; ; try++) {
+		err = do_mount_root(root_dev, "9p",
+				    root_mountflags, root_data);
+		if (err == 0)
+			return 1;
+
+		if (!v9fs_need_retry(root_data) || try > V9FSROOT_RETRY_MAX)
+			break;
+
+		/* Wait, in case the server refused us immediately */
+		ssleep(timeout);
+		timeout <<= 1;
+		if (timeout > V9FSROOT_TIMEOUT_MAX)
+			timeout = V9FSROOT_TIMEOUT_MAX;
+	}
+	return 0;
+}
+#endif
+
 void __init mount_root(void)
 {
 #ifdef CONFIG_ROOT_NFS
@@ -552,6 +599,13 @@ void __init mount_root(void)
 		return;
 	}
 #endif
+#ifdef CONFIG_9P_FS_ROOT
+	if (ROOT_DEV == Root_V9FS) {
+		if (!mount_v9fs_root())
+			pr_err("VFS: Unable to mount root fs via 9p.\n");
+		return;
+	}
+#endif
 #ifdef CONFIG_BLOCK
 	{
 		int err = create_dev("/dev/root", ROOT_DEV);
-- 
2.30.2



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
