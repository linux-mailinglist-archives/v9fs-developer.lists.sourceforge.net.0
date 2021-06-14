Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6AD3A6D6D
	for <lists+v9fs-developer@lfdr.de>; Mon, 14 Jun 2021 19:45:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lsqeV-0003qq-A9; Mon, 14 Jun 2021 17:45:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1lsqeT-0003qc-V6
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 17:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y/u5u8NMmWG95xbJKzcNnLj4Ga+C/bKhaHmGCBao+E8=; b=GLAH3b2U890C+evlzVwp77bkDP
 YYNxt+xdLdeNN13gaEKa9dZODkxcj4MJ7bHJgzrOD2aR/mFiwlCoy2cEQi7JZ4a2FKbYUYZh5I5yJ
 avMjpkCDw/A1WK/zK7X1ZvYQK8lEfarnzF9eyzf9MRTgc2BlyRDBEz464yhesG8mhsaM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y/u5u8NMmWG95xbJKzcNnLj4Ga+C/bKhaHmGCBao+E8=; b=DWVgsqgJBq3Tpxes2W/xB/3db0
 F39Tkj9jLUXkNuswt2PdbE+kAEX8VOgRodR6Xx8pOg0sVIbSj+7iwjAEdofAZu3b4HITVzFfp3XtW
 Fy3v7o7RMItRFLdDzjWYsgRJccGO0TnGn0PUph0EzvKLAvdytCftf5kt64F/64dM3J0o=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lsqeJ-009OJa-CY
 for v9fs-developer@lists.sourceforge.net; Mon, 14 Jun 2021 17:45:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623692717;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y/u5u8NMmWG95xbJKzcNnLj4Ga+C/bKhaHmGCBao+E8=;
 b=UYWaZJSVSw2vNfq1VkBr6s+r3p0EYV6LNfXdOqFA4Op5KHALV8iUCaqF2Yf6lzTUwnIkZH
 iVFir1F5bbevrGHh6mgijOopZBf3cfBu7NKgxjRbfWJjM119DA7cPFwIK1SJidD9w9vj8A
 5ZOHnrn+IS3vIlUFn8ASiwJoTc75Zv8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-KFmGvsUKOueAWeKlSmITIQ-1; Mon, 14 Jun 2021 13:45:15 -0400
X-MC-Unique: KFmGvsUKOueAWeKlSmITIQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 847D9801B15;
 Mon, 14 Jun 2021 17:45:14 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-174.rdu2.redhat.com [10.10.114.174])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CE0105C1A3;
 Mon, 14 Jun 2021 17:45:06 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 5FC26223D99; Mon, 14 Jun 2021 13:45:06 -0400 (EDT)
From: Vivek Goyal <vgoyal@redhat.com>
To: linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 virtio-fs@redhat.com
Date: Mon, 14 Jun 2021 13:44:53 -0400
Message-Id: <20210614174454.903555-2-vgoyal@redhat.com>
In-Reply-To: <20210614174454.903555-1-vgoyal@redhat.com>
References: <20210614174454.903555-1-vgoyal@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lsqeJ-009OJa-CY
Subject: [V9fs-developer] [PATCH v2 1/2] init/do_mounts.c: Add a path to
 boot from tag based filesystems
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
Cc: hch@infradead.org, miklos@szeredi.hu, richard.weinberger@gmail.com,
 dgilbert@redhat.com, dhowells@redhat.com, viro@zeniv.linux.org.uk,
 stefanha@redhat.com, v9fs-developer@lists.sourceforge.net, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

We want to be able to mount virtiofs as rootfs and pass appropriate
kernel command line. Right now there does not seem to be a good way
to do that. If I specify "root=myfs rootfstype=virtiofs", system
panics.

virtio-fs: tag </dev/root> not found
..
..
[ end Kernel panic - not syncing: VFS: Unable to mount root fs on
+unknown-block(0,0) ]

Basic problem here is that kernel assumes that device identifier
passed in "root=" is a block device. But there are few execptions
to this rule to take care of the needs of mtd, ubi, NFS and CIFS.

For example, mtd and ubi prefix "mtd:" or "ubi:" respectively.

"root=mtd:<identifier>" or "root=ubi:<identifier>"

NFS and CIFS use "root=/dev/nfs" and CIFS passes "root=/dev/cifs" and
actual root device details come from filesystem specific kernel
command line options.

virtiofs does not seem to fit in any of the above categories. In fact
we have 9pfs which can be used to boot from but it also does not
have a proper syntax to specify rootfs and does not fit into any of
the existing syntax. They both expect a device "tag" to be passed
in a device to be mounted. And filesystem knows how to parse and
use "tag".

So there seem to be a class of filesystems which specify root device
using a "tag" which is understood by the filesystem. And filesystem
simply expects that "tag" to be passed as "source" of mount and
how to mount filesystem using that "tag" is responsibility of filesystem.

This patch proposes that we internally create a list of filesystems
which pass a "tag" in "root=<tag>" and expect that tag to be passed
as "source" of mount. With this patch I can boot into virtiofs rootfs
with following syntax.

"root=myfs rootfstype=virtiofs rw"

This patch adds support for virtiofs and next patch adds 9p to the
list.

And any other file system which is fine with these semantics,
should be able to work with it easily.

Signed-off-by: Vivek Goyal <vgoyal@redhat.com>
---
 init/do_mounts.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/init/do_mounts.c b/init/do_mounts.c
index a78e44ee6adb..2a18238f4962 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -31,6 +31,12 @@
 int root_mountflags = MS_RDONLY | MS_SILENT;
 static char * __initdata root_device_name;
 static char __initdata saved_root_name[64];
+static char *__initdata tag_based_rootfs[] = {
+#if IS_BUILTIN(CONFIG_VIRTIO_FS)
+	"virtiofs",
+#endif
+};
+static bool __initdata tag_based_root;
 static int root_wait;
 
 dev_t ROOT_DEV;
@@ -552,6 +558,14 @@ void __init mount_root(void)
 		return;
 	}
 #endif
+	if (tag_based_root) {
+		if (!do_mount_root(root_device_name, root_fs_names,
+				   root_mountflags, root_mount_data))
+			return;
+		panic("VFS: Unable to mount root \"%s\" via \"%s\"\n",
+		      root_device_name, root_fs_names);
+	}
+
 #ifdef CONFIG_BLOCK
 	{
 		int err = create_dev("/dev/root", ROOT_DEV);
@@ -563,6 +577,20 @@ void __init mount_root(void)
 #endif
 }
 
+static bool is_tag_based_rootfs(char *name)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(tag_based_rootfs); i++) {
+		int name_len = strlen(tag_based_rootfs[i]) + 1;
+
+		if (!strncmp(tag_based_rootfs[i], name, name_len))
+			return true;
+	}
+
+	return false;
+}
+
 /*
  * Prepare the namespace - decide what/where to mount, load ramdisks, etc.
  */
@@ -593,6 +621,10 @@ void __init prepare_namespace(void)
 			goto out;
 		}
 		ROOT_DEV = name_to_dev_t(root_device_name);
+		if (ROOT_DEV == 0 && root_fs_names) {
+			if (is_tag_based_rootfs(root_fs_names))
+				tag_based_root = true;
+		}
 		if (strncmp(root_device_name, "/dev/", 5) == 0)
 			root_device_name += 5;
 	}
-- 
2.25.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
