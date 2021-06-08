Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A75E39FAE9
	for <lists+v9fs-developer@lfdr.de>; Tue,  8 Jun 2021 17:36:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lqdlr-0002Dy-Fi; Tue, 08 Jun 2021 15:36:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1lqdlX-0002Ai-Gc
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 15:35:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bdWtx07VT+5//++n9YSCOKqUGmNzYyJml6suv/kurIE=; b=eXMQSb7d5QhhgzgE3pu3ifZL6X
 xCrW0VWffYUCwUTKN41GvAmeuTuQJOnoo//mYnxaBvsYM1q0PaCeNHjrARAgEQEmftFYGs2YLMJHU
 sJfemyBOuA5A+3XHj6XLoK8qiURJHI1GCiSbE9W6ulbQLU4U01qQvY79vM38//HxaBiU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=bdWtx07VT+5//++n9YSCOKqUGmNzYyJml6suv/kurIE=; b=Z
 QcL5MJkz1n4SYjnGEoft7PjK4g/OPr/lDT7aNfIT7pasAfNwbSS8RGpOE81pgJbAcKwWbGoetF5ul
 rY8HVncOFzrD2y+H50mvaY5YBxEpcDK5FcpcWYOlPsZLcm871UnVXx2y0ef+I54O8zl9PV4GPDs5v
 tp2wdC92b8N7Y7wo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lqdlT-0011XR-Sn
 for v9fs-developer@lists.sourceforge.net; Tue, 08 Jun 2021 15:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623166533;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=bdWtx07VT+5//++n9YSCOKqUGmNzYyJml6suv/kurIE=;
 b=be0Syy7Zri/y0yR+k2dQ9vpxLYTP+31IoHNuzvv+PxSiRRbzMbTKQrCadHrg+9Aqdwv6CB
 BB/R2qGmRLI8/km2WKNgsMJQgXqxztC6tCKestVAmK1yQI3RQgIyD3ZX4txzSxGons3DDS
 KaIZ9NlkrOd9fu98oSLcfMyoCEJZYEE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-mWGBIhkFNuWzIaUg22N9zg-1; Tue, 08 Jun 2021 11:35:32 -0400
X-MC-Unique: mWGBIhkFNuWzIaUg22N9zg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3EF7A1020C37;
 Tue,  8 Jun 2021 15:35:31 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-35.rdu2.redhat.com [10.10.114.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C489610016F8;
 Tue,  8 Jun 2021 15:35:24 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 4D70822054F; Tue,  8 Jun 2021 11:35:24 -0400 (EDT)
Date: Tue, 8 Jun 2021 11:35:24 -0400
From: Vivek Goyal <vgoyal@redhat.com>
To: linux-fsdevel@vger.kernel.org, virtio-fs@redhat.com,
 linux kernel mailing list <linux-kernel@vger.kernel.org>
Message-ID: <20210608153524.GB504497@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lqdlT-0011XR-Sn
Subject: [V9fs-developer] [PATCH] init/do_mounts.c: Add root="fstag:<tag>"
 syntax for root device
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
Cc: Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard.weinberger@gmail.com>, dgilbert@redhat.com,
 David Howells <dhowells@redhat.com>, viro@zeniv.linux.org.uk,
 stefanha@redhat.com, v9fs-developer@lists.sourceforge.net
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
[ end Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,0) ]

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

So this patch proposes that we add a new prefix "fstag:" which specifies
that identifier which follows is filesystem specific tag and its not
a block device. Just pass this tag to filesystem and filesystem will
figure out how to mount it.

For example, "root=fstag:<tag>".

In case of virtiofs, I can specify "root=fstag:myfs rootfstype=virtiofs"
and it works.

I think this should work for 9p as well. "root=fstag:myfs rootfstype=9p".
Though I have yet to test it.

This kind of syntax should be able to address wide variety of use cases
where root device is not a block device and is simply some kind of
tag/label understood by filesystem.

Signed-off-by: Vivek Goyal <vgoyal@redhat.com>
---
 include/linux/root_dev.h |  1 +
 init/do_mounts.c         | 13 +++++++++++++
 2 files changed, 14 insertions(+)

diff --git a/include/linux/root_dev.h b/include/linux/root_dev.h
index 4e78651371ba..3fda7c5d9327 100644
--- a/include/linux/root_dev.h
+++ b/include/linux/root_dev.h
@@ -9,6 +9,7 @@
 enum {
 	Root_NFS = MKDEV(UNNAMED_MAJOR, 255),
 	Root_CIFS = MKDEV(UNNAMED_MAJOR, 254),
+	Root_FSTAG = MKDEV(UNNAMED_MAJOR, 253),
 	Root_RAM0 = MKDEV(RAMDISK_MAJOR, 0),
 	Root_RAM1 = MKDEV(RAMDISK_MAJOR, 1),
 	Root_FD0 = MKDEV(FLOPPY_MAJOR, 0),
diff --git a/init/do_mounts.c b/init/do_mounts.c
index a78e44ee6adb..4d1df0da1ccc 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -275,6 +275,7 @@ static dev_t devt_from_devnum(const char *name)
  *	9) PARTLABEL=<name> with name being the GPT partition label.
  *	   MSDOS partitions do not support labels!
  *	10) /dev/cifs represents Root_CIFS (0xfe)
+ *	11) fstag:<tag> represents Root_FSTAG (0xfd)
  *
  *	If name doesn't have fall into the categories above, we return (0,0).
  *	block_class is used to check if something is a disk name. If the disk
@@ -287,6 +288,8 @@ dev_t name_to_dev_t(const char *name)
 		return Root_NFS;
 	if (strcmp(name, "/dev/cifs") == 0)
 		return Root_CIFS;
+	if (strncmp(name, "fstag:", 6) == 0)
+		return Root_FSTAG;
 	if (strcmp(name, "/dev/ram") == 0)
 		return Root_RAM0;
 #ifdef CONFIG_BLOCK
@@ -552,6 +555,16 @@ void __init mount_root(void)
 		return;
 	}
 #endif
+	if (ROOT_DEV == Root_FSTAG && root_fs_names) {
+		/* Skip "fstag:" prefix and point to real tag */
+		root_device_name += 6;
+		if (!do_mount_root(root_device_name, root_fs_names,
+					root_mountflags, root_mount_data))
+			return;
+		panic("VFS: Unable to mount root \"fstag:%s\" via \"%s\"\n",
+			root_device_name, root_fs_names);
+	}
+
 #ifdef CONFIG_BLOCK
 	{
 		int err = create_dev("/dev/root", ROOT_DEV);
-- 
2.25.4



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
