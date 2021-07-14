Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E65EB3C9207
	for <lists+v9fs-developer@lfdr.de>; Wed, 14 Jul 2021 22:24:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m3lQI-0001u7-7o; Wed, 14 Jul 2021 20:24:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1m3lQH-0001tm-En
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Jul 2021 20:24:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T2gePRK85A6LvcvTNsyknMtURDmZvzCUYyYRTFLIZuI=; b=U16PO9C1/DhGAW5MXNTyEhoanj
 J4/o3AnnGr1erHteyfMukIAbX3mJmqKnkV2CbVws1wSq6M3qUVkaQqAgy/F0epA77WFPnNoHvC7Dh
 f087vB/lh9eDiCjZOHqhwiZtHa90dbuvO4opFLj6ygUp7dkcELpkVSMCoDq+LZ2kdzyY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T2gePRK85A6LvcvTNsyknMtURDmZvzCUYyYRTFLIZuI=; b=EgwWDxNe9TiGsxwz6xCHLap7lR
 8OdADE3PiFp5S0VmwOgPP4h+U7w6AfzpmzaLabprQgIsVunb5yn2KE89FdENam/3OSZkpDC2TgS6E
 WojH1zEUmKcnNEWLJI8grrrJe3MtDARbDu8L9wf8yVfRd78U7c73LHeRmChjOotDQoks=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m3lQB-008RV8-Qf
 for v9fs-developer@lists.sourceforge.net; Wed, 14 Jul 2021 20:24:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626294229;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=T2gePRK85A6LvcvTNsyknMtURDmZvzCUYyYRTFLIZuI=;
 b=Ae7sS+a9NTYh33RN5RBcMS2TrHD+fWqDsx4hfxI+aOwQok/VLpFFxmEqstc8VDal7obWtj
 ckV2fLuw2FH+8QGE803i7G39EbRvZ/Xn4JcD/lvPdPP1YKH0T7XAqo44n5doTRMeLHcbKH
 JOR8e9slgfVbQS5xQIxbytxbyX1b2vk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-n9mOPQq3OAWspcS-D5xOsQ-1; Wed, 14 Jul 2021 16:23:47 -0400
X-MC-Unique: n9mOPQq3OAWspcS-D5xOsQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B612100CCE0;
 Wed, 14 Jul 2021 20:23:42 +0000 (UTC)
Received: from horse.redhat.com (ovpn-114-201.rdu2.redhat.com [10.10.114.201])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C938138E50;
 Wed, 14 Jul 2021 20:23:40 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 6355A226CA5; Wed, 14 Jul 2021 16:23:40 -0400 (EDT)
From: Vivek Goyal <vgoyal@redhat.com>
To: viro@zeniv.linux.org.uk
Date: Wed, 14 Jul 2021 16:23:20 -0400
Message-Id: <20210714202321.59729-3-vgoyal@redhat.com>
In-Reply-To: <20210714202321.59729-1-vgoyal@redhat.com>
References: <20210714202321.59729-1-vgoyal@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: lst.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m3lQB-008RV8-Qf
Subject: [V9fs-developer] [PATCH v3 2/3] init: allow mounting arbitrary
 non-blockdevice filesystems as root
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
Cc: miklos@szeredi.hu, linux-kernel@vger.kernel.org, virtio-fs@redhat.com,
 stefanha@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Christoph Hellwig <hch@lst.de>

Currently the only non-blockdevice filesystems that can be used as the
initial root filesystem are NFS and CIFS, which use the magic
"root=/dev/nfs" and "root=/dev/cifs" syntax that requires the root
device file system details to come from filesystem specific kernel
command line options.

Add a little bit of new code that allows to just pass arbitrary
string mount options to any non-blockdevice filesystems so that it can
be mounted as the root file system.

For example a virtiofs root file system can be mounted using the
following syntax:

"root=myfs rootfstype=virtiofs rw"

Based on an earlier patch from Vivek Goyal <vgoyal@redhat.com>.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 init/do_mounts.c | 43 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/init/do_mounts.c b/init/do_mounts.c
index ec32de3ad52b..bdeb90b8d669 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -534,6 +534,45 @@ static int __init mount_cifs_root(void)
 }
 #endif
 
+static bool __init fs_is_nodev(char *fstype)
+{
+	struct file_system_type *fs = get_fs_type(fstype);
+	bool ret = false;
+
+	if (fs) {
+		ret = !(fs->fs_flags & FS_REQUIRES_DEV);
+		put_filesystem(fs);
+	}
+
+	return ret;
+}
+
+static int __init mount_nodev_root(void)
+{
+	char *fs_names, *fstype;
+	int err = -EINVAL;
+
+	fs_names = (void *)__get_free_page(GFP_KERNEL);
+	if (!fs_names)
+		return -EINVAL;
+	split_fs_names(fs_names, root_fs_names);
+
+	for (fstype = fs_names; *fstype; fstype += strlen(fstype) + 1) {
+		if (!fs_is_nodev(fstype))
+			continue;
+		err = do_mount_root(root_device_name, fstype, root_mountflags,
+				    root_mount_data);
+		if (!err)
+			break;
+		if (err != -EACCES && err != -EINVAL)
+			panic("VFS: Unable to mount root \"%s\" (%s), err=%d\n",
+			      root_device_name, fstype, err);
+	}
+
+	free_page((unsigned long)fs_names);
+	return err;
+}
+
 void __init mount_root(void)
 {
 #ifdef CONFIG_ROOT_NFS
@@ -550,6 +589,10 @@ void __init mount_root(void)
 		return;
 	}
 #endif
+	if (ROOT_DEV == 0 && root_device_name && root_fs_names) {
+		if (mount_nodev_root() == 0)
+			return;
+	}
 #ifdef CONFIG_BLOCK
 	{
 		int err = create_dev("/dev/root", ROOT_DEV);
-- 
2.31.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
