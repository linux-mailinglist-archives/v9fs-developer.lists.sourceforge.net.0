Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A83488204
	for <lists+v9fs-developer@lfdr.de>; Sat,  8 Jan 2022 08:09:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n65qo-0007el-7b; Sat, 08 Jan 2022 07:09:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <amir73il@gmail.com>) id 1n65qm-0007ef-Um
 for v9fs-developer@lists.sourceforge.net; Sat, 08 Jan 2022 07:09:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sRXzK/lqvK+CkfJ0q4743gkEDTMH9u4vG56Fc2vaE/U=; b=lQBHJ7xhr8Xj5MKHsaq4W7JNjO
 o4tqD6ORWoAsGwY5KpK4Qz29ziYYmsbvy2F9NUL8wGLEWRPnOVfGxt+tWBJ63zG0PvqDv0m3S+Wnh
 7+Y4HfFobcsXq4xioGtuEQp9EI1GlShjZaWWud1a6bYLfBKbG7FHqHOl0RYD26iEAIcg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sRXzK/lqvK+CkfJ0q4743gkEDTMH9u4vG56Fc2vaE/U=; b=OY6Q1bgrG37WXqI3Apc2qff2sI
 fXm8aiAM5Uapl/ikcQzXbO6ca2gLntk22e1zAyfBfFyrLf6ZNrT1QVZlSm/Ub8N5u860U7qTMDqvT
 Nvs9m4TlWuF2PQD/9ooUuphXdhtSCiHTS4NpC2y7kh+00DLDDLpUWFGm0Sn2wvZ40F48=;
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n65qk-0067GS-8Q
 for v9fs-developer@lists.sourceforge.net; Sat, 08 Jan 2022 07:09:16 +0000
Received: by mail-io1-f51.google.com with SMTP id h23so9976554iol.11
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 07 Jan 2022 23:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sRXzK/lqvK+CkfJ0q4743gkEDTMH9u4vG56Fc2vaE/U=;
 b=ieQQfVLBY3KSd4KecN4JHRORUQEeh/oogCFLY0R/2/kfI0G7S/VhAnBizemKzEprHB
 EKuK/bE1g/3M4xE0uJYxJCw+6ncoMVwLNs6iQTtvmPFpn0kgym7zKX9jdGKZ4g6+5O9w
 WA+cms/PeN55G2DsYXkohXVTBV7Kf+SKuH0GWkbNORUO6Vhy3FB0IvMApo/HdoU0Zxwq
 VMtYqMoXj1TH0/JynvBWvyLNO9sRa6z8HKBfBDGlX1VLzlD8CjAc/tFf9njsL1QRKia5
 08YRaqUW5rYdFQq0XKICA6lNAzhj6obprkj/8e7cLIU6AeCmQ4lYvZU/VAysTgLrGqCu
 np1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sRXzK/lqvK+CkfJ0q4743gkEDTMH9u4vG56Fc2vaE/U=;
 b=yhXYJbXxKmXy4iMVc0sc291ongil3vL7o13VYBtLAPgF/ha+U+10wujaY6I9QiPm1K
 w+Jcph4fvyAI3Ka739ibjTZvlVqbQ1No3TJSKPlq7IDvkfzMcAswVF7KC96vPUlLn8pk
 8IqQys53oqPIHJRvhg1DkPu6voRjcv4jwEtBgIGi8+7+q6gUul7c/gS4lcw6OwSbYP+D
 QMDbOrJK56EvaABaFc07GCpfrmchO2KUcYIMQrsl/xb7YUaI2qWmBTAARXf9Qa2l+9rk
 j+MoihH4NUsl9vT2m4uT62Fwmvlmfq6rW/tbB+ws6HXnYUVoTTlge3jPxx+ilECW2t3Z
 i59w==
X-Gm-Message-State: AOAM531uyjGIKe6RsUu8VKG1Jk4n0wneYgolzWU7Y1n+S9MnBRox9OG6
 0r9D0rp8h7m8weomKQkyF7JyudRUsk8MYRVlrL4=
X-Google-Smtp-Source: ABdhPJx+/bHNQi2TJrW6OyIV2QCN1CKOeiSpIVesRRe2vCRlhJscDWjlBTocK3a12pB+qw5jpsCC+o53g/Y1aGq5M88=
X-Received: by 2002:a05:6638:160c:: with SMTP id
 x12mr33388634jas.1.1641625748333; 
 Fri, 07 Jan 2022 23:09:08 -0800 (PST)
MIME-Version: 1.0
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
 <164021541207.640689.564689725898537127.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021541207.640689.564689725898537127.stgit@warthog.procyon.org.uk>
From: Amir Goldstein <amir73il@gmail.com>
Date: Sat, 8 Jan 2022 09:08:57 +0200
Message-ID: <CAOQ4uxjEcvffv=rNXS-r+NLz+=6yk4abRuX_AMq9v-M4nf_PtA@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Dec 25, 2021 at 1:32 AM David Howells wrote: > > Use
 an inode flag, S_KERNEL_FILE, to mark that a backing file is in use by >
 the kernel to prevent cachefiles or other kernel services from i [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amir73il[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1n65qk-0067GS-8Q
Subject: Re: [V9fs-developer] [PATCH v4 38/68] vfs,
 cachefiles: Mark a backing file in use with an inode flag
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
Cc: CIFS <linux-cifs@vger.kernel.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, v9fs-developer@lists.sourceforge.net,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel <ceph-devel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sat, Dec 25, 2021 at 1:32 AM David Howells <dhowells@redhat.com> wrote:
>
> Use an inode flag, S_KERNEL_FILE, to mark that a backing file is in use by
> the kernel to prevent cachefiles or other kernel services from interfering
> with that file.
>
> Alter rmdir to reject attempts to remove a directory marked with this flag.
> This is used by cachefiles to prevent cachefilesd from removing them.
>
> Using S_SWAPFILE instead isn't really viable as that has other effects in
> the I/O paths.
>
> Changes
> =======
> ver #3:
>  - Check for the object pointer being NULL in the tracepoints rather than
>    the caller.
>
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: linux-cachefs@redhat.com
> Link: https://lore.kernel.org/r/163819630256.215744.4815885535039369574.stgit@warthog.procyon.org.uk/ # v1
> Link: https://lore.kernel.org/r/163906931596.143852.8642051223094013028.stgit@warthog.procyon.org.uk/ # v2
> Link: https://lore.kernel.org/r/163967141000.1823006.12920680657559677789.stgit@warthog.procyon.org.uk/ # v3
> ---
>
>  fs/cachefiles/Makefile            |    1 +
>  fs/cachefiles/namei.c             |   43 +++++++++++++++++++++++++++++++++++++
>  fs/namei.c                        |    3 ++-
>  include/linux/fs.h                |    1 +
>  include/trace/events/cachefiles.h |   42 ++++++++++++++++++++++++++++++++++++
>  5 files changed, 89 insertions(+), 1 deletion(-)
>  create mode 100644 fs/cachefiles/namei.c
>
> diff --git a/fs/cachefiles/Makefile b/fs/cachefiles/Makefile
> index 463e3d608b75..e0b092ca077f 100644
> --- a/fs/cachefiles/Makefile
> +++ b/fs/cachefiles/Makefile
> @@ -7,6 +7,7 @@ cachefiles-y := \
>         cache.o \
>         daemon.o \
>         main.o \
> +       namei.o \
>         security.o
>
>  cachefiles-$(CONFIG_CACHEFILES_ERROR_INJECTION) += error_inject.o
> diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
> new file mode 100644
> index 000000000000..913f83f1c900
> --- /dev/null
> +++ b/fs/cachefiles/namei.c
> @@ -0,0 +1,43 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/* CacheFiles path walking and related routines
> + *
> + * Copyright (C) 2021 Red Hat, Inc. All Rights Reserved.
> + * Written by David Howells (dhowells@redhat.com)
> + */
> +
> +#include <linux/fs.h>
> +#include "internal.h"
> +
> +/*
> + * Mark the backing file as being a cache file if it's not already in use.  The
> + * mark tells the culling request command that it's not allowed to cull the
> + * file or directory.  The caller must hold the inode lock.
> + */
> +static bool __cachefiles_mark_inode_in_use(struct cachefiles_object *object,
> +                                          struct dentry *dentry)
> +{
> +       struct inode *inode = d_backing_inode(dentry);
> +       bool can_use = false;
> +
> +       if (!(inode->i_flags & S_KERNEL_FILE)) {
> +               inode->i_flags |= S_KERNEL_FILE;
> +               trace_cachefiles_mark_active(object, inode);
> +               can_use = true;
> +       } else {
> +               pr_notice("cachefiles: Inode already in use: %pd\n", dentry);
> +       }
> +
> +       return can_use;
> +}
> +
> +/*
> + * Unmark a backing inode.  The caller must hold the inode lock.
> + */
> +static void __cachefiles_unmark_inode_in_use(struct cachefiles_object *object,
> +                                            struct dentry *dentry)
> +{
> +       struct inode *inode = d_backing_inode(dentry);
> +
> +       inode->i_flags &= ~S_KERNEL_FILE;
> +       trace_cachefiles_mark_inactive(object, inode);
> +}
> diff --git a/fs/namei.c b/fs/namei.c
> index 1f9d2187c765..d81f04f8d818 100644
> --- a/fs/namei.c
> +++ b/fs/namei.c
> @@ -3958,7 +3958,8 @@ int vfs_rmdir(struct user_namespace *mnt_userns, struct inode *dir,
>         inode_lock(dentry->d_inode);
>
>         error = -EBUSY;
> -       if (is_local_mountpoint(dentry))
> +       if (is_local_mountpoint(dentry) ||
> +           (dentry->d_inode->i_flags & S_KERNEL_FILE))

Better as this check to the many other checks in may_delete()

>                 goto out;
>
>         error = security_inode_rmdir(dir, dentry);
> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index 2c0b8e77d9ab..bcf1ca430139 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -2249,6 +2249,7 @@ struct super_operations {
>  #define S_ENCRYPTED    (1 << 14) /* Encrypted file (using fs/crypto/) */
>  #define S_CASEFOLD     (1 << 15) /* Casefolded file */
>  #define S_VERITY       (1 << 16) /* Verity file (using fs/verity/) */
> +#define S_KERNEL_FILE  (1 << 17) /* File is in use by the kernel (eg. fs/cachefiles) */
>

Trying to brand this flag as a generic "in use by kernel" is misleading.
Modules other than cachefiles cannot set/clear this flag, because then
cachefiles won't know that it is allowed to set/clear the flag.

So I think it would be better to call it for what it really is - an inode flag
that is controlled by cachefiles.
Also, the name KERNEL_FILE for a directory is a bit confusing IMO.
Perhaps S_CACHEFILES?

Thanks,
Amir.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
