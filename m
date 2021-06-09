Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 954943A1A09
	for <lists+v9fs-developer@lfdr.de>; Wed,  9 Jun 2021 17:46:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lr0PL-0001hh-EJ; Wed, 09 Jun 2021 15:46:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <vgoyal@redhat.com>) id 1lr0PK-0001ha-FR
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Jun 2021 15:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k0h2FiXjWVIPi0yn2dv3rK6XwTKryWiZd+hyxzHDne0=; b=QLeWm5u696fSBY/pOJtcCgJ509
 rzkzgLkzPWUAEMH1Uef5a0oAzl8zVNhNTqjwdHLTiFUSIKQ9jrmq6XxIXqq6zlxcsObIMniyj5IOX
 iaG5aHJEhwN7RVdgB+F/q8ZK/sqePqpHEXy9HSj6kujy8ZqSEVNfa+p5wfXR8GPlotoM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k0h2FiXjWVIPi0yn2dv3rK6XwTKryWiZd+hyxzHDne0=; b=fHpxMlWANORAlWybvGwoHm8Aei
 rUHqXQ9HXZnL9RVVOOWXdpENG2p3tnchziAOS3ngNR5YFMmtPfhfXiMhXJM3oLILwCFx3oyyDRxp5
 kuv3qq4y1uMEdzkrK5WZWZHIMj3FjqkUr+wDY3dSHSzgqaKkRi86MEFDzeVD5w10fIh8=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lr0P3-002Hsl-8R
 for v9fs-developer@lists.sourceforge.net; Wed, 09 Jun 2021 15:46:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623253555;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=k0h2FiXjWVIPi0yn2dv3rK6XwTKryWiZd+hyxzHDne0=;
 b=f9ZGb1rn8g8YLFsTiCcGL6RNn2soq0wkFHhehUt4Ft0MRXgAt/fDyblqdTNs602i7mmTQM
 AwXWY8lo7p7Flke34/HwmFzzhz23RwpsqJdMnBBL+9Bc3sFu123j9dY1GHYybsVMfbvWpP
 dHNp3oIVCgHSCVARMgNeuDtkbD/HVZ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-445-MuLHCExcOGCbSqVaUNbLZg-1; Wed, 09 Jun 2021 11:45:53 -0400
X-MC-Unique: MuLHCExcOGCbSqVaUNbLZg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DFB27A40C8;
 Wed,  9 Jun 2021 15:45:51 +0000 (UTC)
Received: from horse.redhat.com (ovpn-112-33.rdu2.redhat.com [10.10.112.33])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 78A265D6AD;
 Wed,  9 Jun 2021 15:45:44 +0000 (UTC)
Received: by horse.redhat.com (Postfix, from userid 10451)
 id 03EA822054F; Wed,  9 Jun 2021 11:45:43 -0400 (EDT)
Date: Wed, 9 Jun 2021 11:45:43 -0400
From: Vivek Goyal <vgoyal@redhat.com>
To: Stefan Hajnoczi <stefanha@redhat.com>
Message-ID: <20210609154543.GA579806@redhat.com>
References: <20210608153524.GB504497@redhat.com>
 <YMCPPCbjbRoPAEcL@stefanha-x1.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMCPPCbjbRoPAEcL@stefanha-x1.localdomain>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lr0P3-002Hsl-8R
Subject: Re: [V9fs-developer] [PATCH] init/do_mounts.c: Add
 root="fstag:<tag>" syntax for root device
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
Cc: David Howells <dhowells@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux kernel mailing list <linux-kernel@vger.kernel.org>, dgilbert@redhat.com,
 virtio-fs@redhat.com, viro@zeniv.linux.org.uk,
 Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jun 09, 2021 at 10:51:56AM +0100, Stefan Hajnoczi wrote:
> On Tue, Jun 08, 2021 at 11:35:24AM -0400, Vivek Goyal wrote:
> > We want to be able to mount virtiofs as rootfs and pass appropriate
> > kernel command line. Right now there does not seem to be a good way
> > to do that. If I specify "root=myfs rootfstype=virtiofs", system
> > panics.
> > 
> > virtio-fs: tag </dev/root> not found
> > ..
> > ..
> > [ end Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,0) ]
> > 
> > Basic problem here is that kernel assumes that device identifier
> > passed in "root=" is a block device. But there are few execptions
> > to this rule to take care of the needs of mtd, ubi, NFS and CIFS.
> > 
> > For example, mtd and ubi prefix "mtd:" or "ubi:" respectively.
> > 
> > "root=mtd:<identifier>" or "root=ubi:<identifier>"
> > 
> > NFS and CIFS use "root=/dev/nfs" and CIFS passes "root=/dev/cifs" and
> > actual root device details come from filesystem specific kernel
> > command line options.
> > 
> > virtiofs does not seem to fit in any of the above categories. In fact
> > we have 9pfs which can be used to boot from but it also does not
> > have a proper syntax to specify rootfs and does not fit into any of
> > the existing syntax. They both expect a device "tag" to be passed
> > in a device to be mounted. And filesystem knows how to parse and
> > use "tag".
> > 
> > So this patch proposes that we add a new prefix "fstag:" which specifies
> > that identifier which follows is filesystem specific tag and its not
> > a block device. Just pass this tag to filesystem and filesystem will
> > figure out how to mount it.
> > 
> > For example, "root=fstag:<tag>".
> > 
> > In case of virtiofs, I can specify "root=fstag:myfs rootfstype=virtiofs"
> > and it works.
> > 
> > I think this should work for 9p as well. "root=fstag:myfs rootfstype=9p".
> > Though I have yet to test it.
> > 
> > This kind of syntax should be able to address wide variety of use cases
> > where root device is not a block device and is simply some kind of
> > tag/label understood by filesystem.
> 
> "fstag" is kind of virtio-9p/fs specific. The intended effect is really
> to specify the file system source (like in mount(2)) without it being
> interpreted as a block device.

[ CC christoph ]

I think mount(2) has little different requirements. It more or less
passes the source to filesystem. But during early boot, we do so
much more with source, that is parse it and determine device major
and minor and create blockdevice and then call into filesystem.

> 
> In a previous discussion David Gilbert suggested detecting file systems
> that do not need a block device:
> https://patchwork.kernel.org/project/linux-fsdevel/patch/20190906100324.8492-1-stefanha@redhat.com/
> 
> I never got around to doing it, but can do_mounts.c just look at struct
> file_system_type::fs_flags FS_REQUIRES_DEV to detect non-block device
> file systems?

I guess we can use FS_REQUIRES_DEV. We probably will need to add a helper
to determine if filesystem passed in "rootfstype=" has FS_REQUIRES_DEV
set or not.

For now, I have written a patch which does not rely on FS_REQUIRES_DEV.
Instead I have created an array of filesystems which do not want
root=<source> to be treated as block device and expect that "source"
will be directly passed to filesytem to be mounted.

Reason I am not parsing FS_REQUIRES_DEV yet is that I am afraid that
this can change behavior and introduce regression. Some filesystem
which does not have FS_REQUIRES_DEV set but still somehow is going
through block device path (or some path which I can't see yet).

So for now I am playing safe and explicitly creating a list of
filesystems which will opt-in into this behavior. But if folks think
that my fears of regression are misplaced and I should parse
FS_REQUIRES_DEV and that way any filesystem which does not have
FS_REQUIRES_DEV set automatically gets opted in, I can do that.

> 
> That way it would know to just mount with root= as the source instead of
> treating it as a block device. No root= prefix would be required and it
> would handle NFS, virtiofs, virtio-9p, etc without introducing the
> concept of a "tag".
> 
>   root=myfs rootfstype=virtiofs rootflags=...
> 
> I wrote this up quickly after not thinking about the topic for 2 years,
> so the idea may not work at all :).

Now with this patch "root=myfs, rootfstype=virtiofs, rootflags=..." syntax
works for virtiofs.

Please have a look.

Thanks
Vivek


Subject: [PATCH] init/do_mounts.c: Add a path to boot from non blockdev filesystems

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

So this patch proposes that we internally create a list of filesystems
which don't expect a block device and whatever "source" has been
passed in "root=<source>" option, should be passed to filesystem and
filesystem should be able to figure out how to use "source" to
mount filesystem.

As of now I have only added "virtiofs" in the list of such filesystems.
To enable it on 9p, it should be a simple change. Just add "9p" to
the nobdev_filesystems[] array.

And any other file system which is fine with these semantics, that
is pass "source" to filesystem directo to mount, should be able
to work with it easily. 

Signed-off-by: Vivek Goyal <vgoyal@redhat.com>
---
 init/do_mounts.c |   30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

Index: redhat-linux/init/do_mounts.c
===================================================================
--- redhat-linux.orig/init/do_mounts.c	2021-06-09 11:12:58.839309965 -0400
+++ redhat-linux/init/do_mounts.c	2021-06-09 11:41:56.642982703 -0400
@@ -31,6 +31,8 @@
 int root_mountflags = MS_RDONLY | MS_SILENT;
 static char * __initdata root_device_name;
 static char __initdata saved_root_name[64];
+static char *__initdata nobdev_filesystems[] = {"virtiofs"};
+static bool __initdata nobdev_root = false;
 static int root_wait;
 
 dev_t ROOT_DEV;
@@ -552,6 +554,14 @@ void __init mount_root(void)
 		return;
 	}
 #endif
+	if (nobdev_root) {
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
@@ -563,6 +573,22 @@ void __init mount_root(void)
 #endif
 }
 
+static bool nobdev_rootfs(char *name)
+{
+	int i, len;
+
+	len = sizeof(nobdev_filesystems)/sizeof(nobdev_filesystems[0]);
+
+	for (i = 0; i < len; i++) {
+		int name_len = strlen(nobdev_filesystems[i]) + 1;
+
+               if (!strncmp(nobdev_filesystems[i], name, name_len))
+                       return true;
+       }
+
+       return false;
+}
+
 /*
  * Prepare the namespace - decide what/where to mount, load ramdisks, etc.
  */
@@ -593,6 +619,10 @@ void __init prepare_namespace(void)
 			goto out;
 		}
 		ROOT_DEV = name_to_dev_t(root_device_name);
+		if (ROOT_DEV == 0 && root_fs_names) {
+			if (nobdev_rootfs(root_fs_names))
+				nobdev_root = true;
+		}
 		if (strncmp(root_device_name, "/dev/", 5) == 0)
 			root_device_name += 5;
 	}



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
