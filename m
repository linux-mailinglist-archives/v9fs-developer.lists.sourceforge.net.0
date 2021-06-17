Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 949803AB11D
	for <lists+v9fs-developer@lfdr.de>; Thu, 17 Jun 2021 12:14:55 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ltp2x-0000PT-JH; Thu, 17 Jun 2021 10:14:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from
 <BATV+2d022fe3f734549d7e41+6507+infradead.org+hch@casper.srs.infradead.org>)
 id 1ltp2v-0000PL-IG
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Jun 2021 10:14:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1rcaBiYMmxbTIzBSP4Lkyvlkc2KdB5uGKfAUxQ6B2a4=; b=HR5/gYXXI8sdRkM7LxevcDj6ds
 JM4QjqD3cHbjqpJmY+KZXHfvs9zBfSkY8RElG/IGTStwgeAEguPkfI84FkfGuYjA36YR1z6+ta26O
 KDuEwyjmQPySySDeX8W8cz+Mc8VdVoY2amhjJRfsSV1s+sDTE38QJUAhR+D5EF+6Upaw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1rcaBiYMmxbTIzBSP4Lkyvlkc2KdB5uGKfAUxQ6B2a4=; b=UrATaRw6SCruiL7ElF7cRtYx7c
 cBmbvNqNRoBItt8NvSH0N1ugrDB8s8E6Cmu660oaQ8bPUHUyXfTNdR+H0XKH3SSMQ6Z1U695VCBkS
 InxaNbOYaZM4Z+7yk1YqZKza4AawAwk59+OOe/YZMjjGWVKMqjZlUfqUnOG/Uw77PhlM=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1ltp2q-00DZYe-9P
 for v9fs-developer@lists.sourceforge.net; Thu, 17 Jun 2021 10:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=1rcaBiYMmxbTIzBSP4Lkyvlkc2KdB5uGKfAUxQ6B2a4=; b=nTtzOYyH5nOB+rP0PzOPnj6I+b
 Kznx/IAocBctaMmCDpRBXcNsJOFm5Rx3yGsLm+PWWxWHDhmzH2k4knlIjyqz0MxafD79FV3ZF6Dp1
 Vx2s7YvaIQb+zKW4icpwpqz9MhyVR/6AWFOkICqel2DCojYafEI3tTZadCaGq8y08Kl9ybex3TajK
 qBTiX7TxTBkTKx5ClUNwC+i5dm/NVFXzhWnmUauAfJR3DgZy4hWMn3tOFJiL/w0rLP5boCXZN9vB8
 CTEExFY0i1HAry95jafbWjRvtbwQn/snQQYYccuM4Y3dngmmwxqibc25LV8ViDP1qTT+6XSdSVZ+f
 vdNdIovw==;
Received: from hch by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat
 Linux)) id 1ltp28-0090SY-Ou; Thu, 17 Jun 2021 10:14:04 +0000
Date: Thu, 17 Jun 2021 11:14:00 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Vivek Goyal <vgoyal@redhat.com>
Message-ID: <YMsgaPS90iKIqSvi@infradead.org>
References: <20210614174454.903555-1-vgoyal@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210614174454.903555-1-vgoyal@redhat.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1ltp2q-00DZYe-9P
Subject: Re: [V9fs-developer] [PATCH v2 0/2] Add support to boot virtiofs
 and 9pfs as rootfs
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
Cc: dhowells@redhat.com, miklos@szeredi.hu, richard.weinberger@gmail.com,
 dgilbert@redhat.com, linux-kernel@vger.kernel.org, virtio-fs@redhat.com,
 viro@zeniv.linux.org.uk, stefanha@redhat.com, hch@infradead.org,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Why not something like the version below that should work for all nodev
file systems?

diff --git a/init/do_mounts.c b/init/do_mounts.c
index 74aede860de7..3c5676603fef 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -530,6 +530,39 @@ static int __init mount_cifs_root(void)
 }
 #endif
 
+static int __init mount_nodev_root(void)
+{
+	struct file_system_type *fs = get_fs_type(root_fs_names);
+	char *fs_names, *p;
+	int err = -ENODEV;
+
+	if (!fs)
+		goto out;
+	if (fs->fs_flags & FS_REQUIRES_DEV)
+		goto out_put_filesystem;
+
+	fs_names = (void *)__get_free_page(GFP_KERNEL);
+	if (!fs_names)
+		goto out_put_filesystem;
+	get_fs_names(fs_names);
+
+	for (p = fs_names; *p; p += strlen(p) + 1) {
+		err = do_mount_root(root_device_name, p, root_mountflags,
+					root_mount_data);
+		if (!err)
+			break;
+		if (err != -EACCES && err != -EINVAL)
+			panic("VFS: Unable to mount root \"%s\" (%s), err=%d\n",
+				      root_device_name, p, err);
+	}
+
+	free_page((unsigned long)fs_names);
+out_put_filesystem:
+	put_filesystem(fs);
+out:
+	return err;
+}
+
 void __init mount_root(void)
 {
 #ifdef CONFIG_ROOT_NFS
@@ -546,6 +579,8 @@ void __init mount_root(void)
 		return;
 	}
 #endif
+	if (ROOT_DEV == 0 && mount_nodev_root() == 0)
+		return;
 #ifdef CONFIG_BLOCK
 	{
 		int err = create_dev("/dev/root", ROOT_DEV);


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
