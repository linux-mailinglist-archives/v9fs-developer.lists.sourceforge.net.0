Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1104B632A17
	for <lists+v9fs-developer@lfdr.de>; Mon, 21 Nov 2022 17:54:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oxA3a-00011F-5f;
	Mon, 21 Nov 2022 16:54:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <djwong@kernel.org>) id 1oxA3Y-000119-ML
 for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 16:54:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pVdqZfKp8j7rxI0H3olcEyMT4qSkcJ6qEUSHTBZ/fCw=; b=HGSAPB+dGhZrLlJyHd8uX0KhmN
 mXr4C5oExveOERgY03bua+nIYhMFRSga0qrFmZd8trZy+7b2jPTvu05eKGlsEBVF3i+JwH3JTWuZw
 ngQAMhLgOsE+vjFdfKxVcf5tFlZ8+DMYeFIA1wtrSd4lXEqPSPaNspoXFlSa7fgBCTLE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pVdqZfKp8j7rxI0H3olcEyMT4qSkcJ6qEUSHTBZ/fCw=; b=UJCUQrLDrs4b2xKF8EWNX/Dvb/
 QHhQxbCqmWnbpUwuVBA2N6gakYGIViRKo3WIg1WezxEDCb8+M33IyZLidKMnQIIpAtRunKswQAZx7
 f7TgLnSrK3DULDot9H3SZzQwTBIkgn9Az8XIU2sM5INFxgKBiWoGSFrcoYkoQzRMK3Xk=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oxA3W-00085r-Eu for v9fs-developer@lists.sourceforge.net;
 Mon, 21 Nov 2022 16:54:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id ED5B8612A0;
 Mon, 21 Nov 2022 16:53:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BF8CC433D6;
 Mon, 21 Nov 2022 16:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1669049636;
 bh=RNFwT2nlm4MM7+XEPFD3M+9QYWEiVrfG1K5AqGg/Xtk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jy9jMK4i5RTaJTW4AL+PQ3vCJlikbaXpfJYpq+Vps71g90hfhP5ejDvvhRiyH4ZPq
 LM5QYpa8nBi5VN80/YR7c+KqZa+MIbtoxa1t+RrMvPiThw98Yl6YWx9LjB+PdzYuof
 F1Tc0vNMUV9D5t0ogxcZiPvTXna9NRPKFKXXSJ4KaYB7y40DBREWNibfxw+G+DROrT
 FdyYOTcnraSCvj73NcOXVws256iDGF4knNRhve3sFAgufuNkBJ6lUsrlRApbqp8/UX
 mOMKKQfukttUhhLqzZO8WfNMN5NgHnoCjMOVEatYiWGUDpuLr1ua4ZWaM45taLADoM
 4ObdN7SVYzNwQ==
Date: Mon, 21 Nov 2022 08:53:55 -0800
From: "Darrick J. Wong" <djwong@kernel.org>
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <Y3utIzykTCjweC7G@magnolia>
References: <20221120210004.381842-1-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221120210004.381842-1-jlayton@kernel.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote:
 > The file locking definitions have lived in fs.h since the dawn of time,
 > but they are only used by a small subset of the source files th [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oxA3W-00085r-Eu
Subject: Re: [V9fs-developer] [PATCH] filelock: move file locking
 definitions to separate header file
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 Martin Brandenburg <martin@omnibond.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 David Howells <dhowells@redhat.com>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Marc Dionne <marc.dionne@auristor.com>, linux-xfs@vger.kernel.org, hch@lst.de,
 Mike Marshall <hubcap@omnibond.com>, linux-cifs@vger.kernel.org,
 Andreas Gruenbacher <agruenba@redhat.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Mark Fasheh <mark@fasheh.com>, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, Christine Caulfield <ccaulfie@redhat.com>,
 v9fs-developer@lists.sourceforge.net, Ilya Dryomov <idryomov@gmail.com>,
 Namjae Jeon <linkinjeon@kernel.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 Tom Talpey <tom@talpey.com>, linux-fsdevel@vger.kernel.org,
 David Teigland <teigland@redhat.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 ceph-devel@vger.kernel.org, Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, linux-nfs@vger.kernel.org,
 Paulo Alcantara <pc@cjr.nz>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Steve French <sfrench@samba.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Chuck Lever <chuck.lever@oracle.com>, Anna Schumaker <anna@kernel.org>,
 Bob Peterson <rpeterso@redhat.com>, ocfs2-devel@oss.oracle.com,
 Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Sun, Nov 20, 2022 at 03:59:57PM -0500, Jeff Layton wrote:
> The file locking definitions have lived in fs.h since the dawn of time,
> but they are only used by a small subset of the source files that
> include it.
> 
> Move the file locking definitions to a new header file, and add the
> appropriate #include directives to the source files that need them. By
> doing this we trim down fs.h a bit and limit the amount of rebuilding
> that has to be done when we make changes to the file locking APIs.
> 
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>  fs/9p/vfs_file.c          |   1 +
>  fs/afs/internal.h         |   1 +
>  fs/attr.c                 |   1 +
>  fs/ceph/locks.c           |   1 +
>  fs/cifs/cifsfs.c          |   1 +
>  fs/cifs/cifsglob.h        |   1 +
>  fs/cifs/cifssmb.c         |   1 +
>  fs/cifs/file.c            |   1 +
>  fs/cifs/smb2file.c        |   1 +
>  fs/dlm/plock.c            |   1 +
>  fs/fcntl.c                |   1 +
>  fs/file_table.c           |   1 +
>  fs/fuse/file.c            |   1 +
>  fs/gfs2/file.c            |   1 +
>  fs/inode.c                |   1 +
>  fs/ksmbd/smb2pdu.c        |   1 +
>  fs/ksmbd/vfs.c            |   1 +
>  fs/ksmbd/vfs_cache.c      |   1 +
>  fs/lockd/clntproc.c       |   1 +
>  fs/lockd/netns.h          |   1 +
>  fs/locks.c                |   1 +
>  fs/namei.c                |   1 +
>  fs/nfs/nfs4_fs.h          |   1 +
>  fs/nfs_common/grace.c     |   1 +
>  fs/nfsd/netns.h           |   1 +
>  fs/ocfs2/locks.c          |   1 +
>  fs/ocfs2/stack_user.c     |   1 +
>  fs/open.c                 |   1 +
>  fs/orangefs/file.c        |   1 +
>  fs/proc/fd.c              |   1 +
>  fs/utimes.c               |   1 +
>  fs/xattr.c                |   1 +
>  fs/xfs/xfs_buf.h          |   1 +

What part of the xfs buffer cache requires the file locking APIs?

--D

>  fs/xfs/xfs_file.c         |   1 +
>  fs/xfs/xfs_inode.c        |   1 +
>  include/linux/filelock.h  | 428 ++++++++++++++++++++++++++++++++++++++
>  include/linux/fs.h        | 421 -------------------------------------
>  include/linux/lockd/xdr.h |   1 +
>  38 files changed, 464 insertions(+), 421 deletions(-)
>  create mode 100644 include/linux/filelock.h
> 
> Unless anyone has objections, I'll plan to merge this in via the file
> locking tree for v6.3. I'd appreciate Acked-bys or Reviewed-bys from
> maintainers, however.
> 
> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index aec43ba83799..5e3c4b5198a6 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -9,6 +9,7 @@
>  #include <linux/module.h>
>  #include <linux/errno.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/sched.h>
>  #include <linux/file.h>
>  #include <linux/stat.h>
> diff --git a/fs/afs/internal.h b/fs/afs/internal.h
> index 723d162078a3..c41a82a08f8b 100644
> --- a/fs/afs/internal.h
> +++ b/fs/afs/internal.h
> @@ -9,6 +9,7 @@
>  #include <linux/kernel.h>
>  #include <linux/ktime.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/pagemap.h>
>  #include <linux/rxrpc.h>
>  #include <linux/key.h>
> diff --git a/fs/attr.c b/fs/attr.c
> index 1552a5f23d6b..e643f17a5465 100644
> --- a/fs/attr.c
> +++ b/fs/attr.c
> @@ -14,6 +14,7 @@
>  #include <linux/capability.h>
>  #include <linux/fsnotify.h>
>  #include <linux/fcntl.h>
> +#include <linux/filelock.h>
>  #include <linux/security.h>
>  #include <linux/evm.h>
>  #include <linux/ima.h>
> diff --git a/fs/ceph/locks.c b/fs/ceph/locks.c
> index f3b461c708a8..476f25bba263 100644
> --- a/fs/ceph/locks.c
> +++ b/fs/ceph/locks.c
> @@ -7,6 +7,7 @@
>  
>  #include "super.h"
>  #include "mds_client.h"
> +#include <linux/filelock.h>
>  #include <linux/ceph/pagelist.h>
>  
>  static u64 lock_secret;
> diff --git a/fs/cifs/cifsfs.c b/fs/cifs/cifsfs.c
> index fe220686bba4..8d255916b6bf 100644
> --- a/fs/cifs/cifsfs.c
> +++ b/fs/cifs/cifsfs.c
> @@ -12,6 +12,7 @@
>  
>  #include <linux/module.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/mount.h>
>  #include <linux/slab.h>
>  #include <linux/init.h>
> diff --git a/fs/cifs/cifsglob.h b/fs/cifs/cifsglob.h
> index 1420acf987f0..1b9fee67a25e 100644
> --- a/fs/cifs/cifsglob.h
> +++ b/fs/cifs/cifsglob.h
> @@ -25,6 +25,7 @@
>  #include <uapi/linux/cifs/cifs_mount.h>
>  #include "../smbfs_common/smb2pdu.h"
>  #include "smb2pdu.h"
> +#include <linux/filelock.h>
>  
>  #define SMB_PATH_MAX 260
>  #define CIFS_PORT 445
> diff --git a/fs/cifs/cifssmb.c b/fs/cifs/cifssmb.c
> index 1724066c1536..0410658c00bd 100644
> --- a/fs/cifs/cifssmb.c
> +++ b/fs/cifs/cifssmb.c
> @@ -15,6 +15,7 @@
>   /* want to reuse a stale file handle and only the caller knows the file info */
>  
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/kernel.h>
>  #include <linux/vfs.h>
>  #include <linux/slab.h>
> diff --git a/fs/cifs/file.c b/fs/cifs/file.c
> index 6c1431979495..c230e86f1e09 100644
> --- a/fs/cifs/file.c
> +++ b/fs/cifs/file.c
> @@ -9,6 +9,7 @@
>   *
>   */
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/backing-dev.h>
>  #include <linux/stat.h>
>  #include <linux/fcntl.h>
> diff --git a/fs/cifs/smb2file.c b/fs/cifs/smb2file.c
> index ffbd9a99fc12..1f421bfbe797 100644
> --- a/fs/cifs/smb2file.c
> +++ b/fs/cifs/smb2file.c
> @@ -7,6 +7,7 @@
>   *
>   */
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/stat.h>
>  #include <linux/slab.h>
>  #include <linux/pagemap.h>
> diff --git a/fs/dlm/plock.c b/fs/dlm/plock.c
> index 737f185aad8d..ed4357e62f35 100644
> --- a/fs/dlm/plock.c
> +++ b/fs/dlm/plock.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/miscdevice.h>
>  #include <linux/poll.h>
>  #include <linux/dlm.h>
> diff --git a/fs/fcntl.c b/fs/fcntl.c
> index 146c9ab0cd4b..7852e946fdf4 100644
> --- a/fs/fcntl.c
> +++ b/fs/fcntl.c
> @@ -10,6 +10,7 @@
>  #include <linux/mm.h>
>  #include <linux/sched/task.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/file.h>
>  #include <linux/fdtable.h>
>  #include <linux/capability.h>
> diff --git a/fs/file_table.c b/fs/file_table.c
> index dd88701e54a9..372653b92617 100644
> --- a/fs/file_table.c
> +++ b/fs/file_table.c
> @@ -13,6 +13,7 @@
>  #include <linux/init.h>
>  #include <linux/module.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/security.h>
>  #include <linux/cred.h>
>  #include <linux/eventpoll.h>
> diff --git a/fs/fuse/file.c b/fs/fuse/file.c
> index 71bfb663aac5..0e6b3b8e2f27 100644
> --- a/fs/fuse/file.c
> +++ b/fs/fuse/file.c
> @@ -18,6 +18,7 @@
>  #include <linux/falloc.h>
>  #include <linux/uio.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  
>  static int fuse_send_open(struct fuse_mount *fm, u64 nodeid,
>  			  unsigned int open_flags, int opcode,
> diff --git a/fs/gfs2/file.c b/fs/gfs2/file.c
> index 60c6fb91fb58..2a48c8df6d56 100644
> --- a/fs/gfs2/file.c
> +++ b/fs/gfs2/file.c
> @@ -15,6 +15,7 @@
>  #include <linux/mm.h>
>  #include <linux/mount.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/gfs2_ondisk.h>
>  #include <linux/falloc.h>
>  #include <linux/swap.h>
> diff --git a/fs/inode.c b/fs/inode.c
> index b608528efd3a..f32aa2ec148d 100644
> --- a/fs/inode.c
> +++ b/fs/inode.c
> @@ -5,6 +5,7 @@
>   */
>  #include <linux/export.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/mm.h>
>  #include <linux/backing-dev.h>
>  #include <linux/hash.h>
> diff --git a/fs/ksmbd/smb2pdu.c b/fs/ksmbd/smb2pdu.c
> index f2bcd2a5fb7f..d4d6f24790d6 100644
> --- a/fs/ksmbd/smb2pdu.c
> +++ b/fs/ksmbd/smb2pdu.c
> @@ -12,6 +12,7 @@
>  #include <linux/ethtool.h>
>  #include <linux/falloc.h>
>  #include <linux/mount.h>
> +#include <linux/filelock.h>
>  
>  #include "glob.h"
>  #include "smbfsctl.h"
> diff --git a/fs/ksmbd/vfs.c b/fs/ksmbd/vfs.c
> index f9e85d6a160e..f73c4e119ffd 100644
> --- a/fs/ksmbd/vfs.c
> +++ b/fs/ksmbd/vfs.c
> @@ -6,6 +6,7 @@
>  
>  #include <linux/kernel.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/uaccess.h>
>  #include <linux/backing-dev.h>
>  #include <linux/writeback.h>
> diff --git a/fs/ksmbd/vfs_cache.c b/fs/ksmbd/vfs_cache.c
> index da9163b00350..552c3882a8f4 100644
> --- a/fs/ksmbd/vfs_cache.c
> +++ b/fs/ksmbd/vfs_cache.c
> @@ -5,6 +5,7 @@
>   */
>  
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
>  
> diff --git a/fs/lockd/clntproc.c b/fs/lockd/clntproc.c
> index 99fffc9cb958..e875a3571c41 100644
> --- a/fs/lockd/clntproc.c
> +++ b/fs/lockd/clntproc.c
> @@ -12,6 +12,7 @@
>  #include <linux/types.h>
>  #include <linux/errno.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/nfs_fs.h>
>  #include <linux/utsname.h>
>  #include <linux/freezer.h>
> diff --git a/fs/lockd/netns.h b/fs/lockd/netns.h
> index 5bec78c8e431..17432c445fe6 100644
> --- a/fs/lockd/netns.h
> +++ b/fs/lockd/netns.h
> @@ -3,6 +3,7 @@
>  #define __LOCKD_NETNS_H__
>  
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <net/netns/generic.h>
>  
>  struct lockd_net {
> diff --git a/fs/locks.c b/fs/locks.c
> index 8f01bee17715..a5cc90c958c9 100644
> --- a/fs/locks.c
> +++ b/fs/locks.c
> @@ -52,6 +52,7 @@
>  #include <linux/capability.h>
>  #include <linux/file.h>
>  #include <linux/fdtable.h>
> +#include <linux/filelock.h>
>  #include <linux/fs.h>
>  #include <linux/init.h>
>  #include <linux/security.h>
> diff --git a/fs/namei.c b/fs/namei.c
> index 578c2110df02..d5121f51f900 100644
> --- a/fs/namei.c
> +++ b/fs/namei.c
> @@ -20,6 +20,7 @@
>  #include <linux/kernel.h>
>  #include <linux/slab.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/namei.h>
>  #include <linux/pagemap.h>
>  #include <linux/sched/mm.h>
> diff --git a/fs/nfs/nfs4_fs.h b/fs/nfs/nfs4_fs.h
> index cfef738d765e..9822ad1aabef 100644
> --- a/fs/nfs/nfs4_fs.h
> +++ b/fs/nfs/nfs4_fs.h
> @@ -23,6 +23,7 @@
>  #define NFS4_MAX_LOOP_ON_RECOVER (10)
>  
>  #include <linux/seqlock.h>
> +#include <linux/filelock.h>
>  
>  struct idmap;
>  
> diff --git a/fs/nfs_common/grace.c b/fs/nfs_common/grace.c
> index 0a9b72685f98..1479583fbb62 100644
> --- a/fs/nfs_common/grace.c
> +++ b/fs/nfs_common/grace.c
> @@ -9,6 +9,7 @@
>  #include <net/net_namespace.h>
>  #include <net/netns/generic.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  
>  static unsigned int grace_net_id;
>  static DEFINE_SPINLOCK(grace_lock);
> diff --git a/fs/nfsd/netns.h b/fs/nfsd/netns.h
> index 8c854ba3285b..bc139401927d 100644
> --- a/fs/nfsd/netns.h
> +++ b/fs/nfsd/netns.h
> @@ -10,6 +10,7 @@
>  
>  #include <net/net_namespace.h>
>  #include <net/netns/generic.h>
> +#include <linux/filelock.h>
>  #include <linux/percpu_counter.h>
>  #include <linux/siphash.h>
>  
> diff --git a/fs/ocfs2/locks.c b/fs/ocfs2/locks.c
> index 73a3854b2afb..f37174e79fad 100644
> --- a/fs/ocfs2/locks.c
> +++ b/fs/ocfs2/locks.c
> @@ -8,6 +8,7 @@
>   */
>  
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/fcntl.h>
>  
>  #include <cluster/masklog.h>
> diff --git a/fs/ocfs2/stack_user.c b/fs/ocfs2/stack_user.c
> index 64e6ddcfe329..05d4414d0c33 100644
> --- a/fs/ocfs2/stack_user.c
> +++ b/fs/ocfs2/stack_user.c
> @@ -9,6 +9,7 @@
>  
>  #include <linux/module.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/miscdevice.h>
>  #include <linux/mutex.h>
>  #include <linux/slab.h>
> diff --git a/fs/open.c b/fs/open.c
> index a81319b6177f..11a3202ea60c 100644
> --- a/fs/open.c
> +++ b/fs/open.c
> @@ -33,6 +33,7 @@
>  #include <linux/dnotify.h>
>  #include <linux/compat.h>
>  #include <linux/mnt_idmapping.h>
> +#include <linux/filelock.h>
>  
>  #include "internal.h"
>  
> diff --git a/fs/orangefs/file.c b/fs/orangefs/file.c
> index 732661aa2680..12ec31a9113b 100644
> --- a/fs/orangefs/file.c
> +++ b/fs/orangefs/file.c
> @@ -14,6 +14,7 @@
>  #include "orangefs-kernel.h"
>  #include "orangefs-bufmap.h"
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/pagemap.h>
>  
>  static int flush_racache(struct inode *inode)
> diff --git a/fs/proc/fd.c b/fs/proc/fd.c
> index 913bef0d2a36..2a1e7725dbcb 100644
> --- a/fs/proc/fd.c
> +++ b/fs/proc/fd.c
> @@ -11,6 +11,7 @@
>  #include <linux/file.h>
>  #include <linux/seq_file.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  
>  #include <linux/proc_fs.h>
>  
> diff --git a/fs/utimes.c b/fs/utimes.c
> index 39f356017635..00499e4ba955 100644
> --- a/fs/utimes.c
> +++ b/fs/utimes.c
> @@ -7,6 +7,7 @@
>  #include <linux/uaccess.h>
>  #include <linux/compat.h>
>  #include <asm/unistd.h>
> +#include <linux/filelock.h>
>  
>  static bool nsec_valid(long nsec)
>  {
> diff --git a/fs/xattr.c b/fs/xattr.c
> index 61107b6bbed2..b81fd7d8520e 100644
> --- a/fs/xattr.c
> +++ b/fs/xattr.c
> @@ -9,6 +9,7 @@
>    Copyright (c) 2004 Red Hat, Inc., James Morris <jmorris@redhat.com>
>   */
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/slab.h>
>  #include <linux/file.h>
>  #include <linux/xattr.h>
> diff --git a/fs/xfs/xfs_buf.h b/fs/xfs/xfs_buf.h
> index 549c60942208..c1f283cc22f6 100644
> --- a/fs/xfs/xfs_buf.h
> +++ b/fs/xfs/xfs_buf.h
> @@ -11,6 +11,7 @@
>  #include <linux/spinlock.h>
>  #include <linux/mm.h>
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/dax.h>
>  #include <linux/uio.h>
>  #include <linux/list_lru.h>
> diff --git a/fs/xfs/xfs_file.c b/fs/xfs/xfs_file.c
> index e462d39c840e..591c696651f0 100644
> --- a/fs/xfs/xfs_file.c
> +++ b/fs/xfs/xfs_file.c
> @@ -31,6 +31,7 @@
>  #include <linux/mman.h>
>  #include <linux/fadvise.h>
>  #include <linux/mount.h>
> +#include <linux/filelock.h>
>  
>  static const struct vm_operations_struct xfs_file_vm_ops;
>  
> diff --git a/fs/xfs/xfs_inode.c b/fs/xfs/xfs_inode.c
> index aa303be11576..257e279df469 100644
> --- a/fs/xfs/xfs_inode.c
> +++ b/fs/xfs/xfs_inode.c
> @@ -4,6 +4,7 @@
>   * All Rights Reserved.
>   */
>  #include <linux/iversion.h>
> +#include <linux/filelock.h>
>  
>  #include "xfs.h"
>  #include "xfs_fs.h"
> diff --git a/include/linux/filelock.h b/include/linux/filelock.h
> new file mode 100644
> index 000000000000..b686e7e74787
> --- /dev/null
> +++ b/include/linux/filelock.h
> @@ -0,0 +1,428 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _LINUX_FILELOCK_H
> +#define _LINUX_FILELOCK_H
> +
> +#include <linux/list.h>
> +#include <linux/nfs_fs_i.h>
> +
> +#define FL_POSIX	1
> +#define FL_FLOCK	2
> +#define FL_DELEG	4	/* NFSv4 delegation */
> +#define FL_ACCESS	8	/* not trying to lock, just looking */
> +#define FL_EXISTS	16	/* when unlocking, test for existence */
> +#define FL_LEASE	32	/* lease held on this file */
> +#define FL_CLOSE	64	/* unlock on close */
> +#define FL_SLEEP	128	/* A blocking lock */
> +#define FL_DOWNGRADE_PENDING	256 /* Lease is being downgraded */
> +#define FL_UNLOCK_PENDING	512 /* Lease is being broken */
> +#define FL_OFDLCK	1024	/* lock is "owned" by struct file */
> +#define FL_LAYOUT	2048	/* outstanding pNFS layout */
> +#define FL_RECLAIM	4096	/* reclaiming from a reboot server */
> +
> +#define FL_CLOSE_POSIX (FL_POSIX | FL_CLOSE)
> +
> +/*
> + * Special return value from posix_lock_file() and vfs_lock_file() for
> + * asynchronous locking.
> + */
> +#define FILE_LOCK_DEFERRED 1
> +
> +struct file_lock;
> +
> +struct file_lock_operations {
> +	void (*fl_copy_lock)(struct file_lock *, struct file_lock *);
> +	void (*fl_release_private)(struct file_lock *);
> +};
> +
> +struct lock_manager_operations {
> +	void *lm_mod_owner;
> +	fl_owner_t (*lm_get_owner)(fl_owner_t);
> +	void (*lm_put_owner)(fl_owner_t);
> +	void (*lm_notify)(struct file_lock *);	/* unblock callback */
> +	int (*lm_grant)(struct file_lock *, int);
> +	bool (*lm_break)(struct file_lock *);
> +	int (*lm_change)(struct file_lock *, int, struct list_head *);
> +	void (*lm_setup)(struct file_lock *, void **);
> +	bool (*lm_breaker_owns_lease)(struct file_lock *);
> +	bool (*lm_lock_expirable)(struct file_lock *cfl);
> +	void (*lm_expire_lock)(void);
> +};
> +
> +struct lock_manager {
> +	struct list_head list;
> +	/*
> +	 * NFSv4 and up also want opens blocked during the grace period;
> +	 * NLM doesn't care:
> +	 */
> +	bool block_opens;
> +};
> +
> +struct net;
> +void locks_start_grace(struct net *, struct lock_manager *);
> +void locks_end_grace(struct lock_manager *);
> +bool locks_in_grace(struct net *);
> +bool opens_in_grace(struct net *);
> +
> +
> +/*
> + * struct file_lock represents a generic "file lock". It's used to represent
> + * POSIX byte range locks, BSD (flock) locks, and leases. It's important to
> + * note that the same struct is used to represent both a request for a lock and
> + * the lock itself, but the same object is never used for both.
> + *
> + * FIXME: should we create a separate "struct lock_request" to help distinguish
> + * these two uses?
> + *
> + * The varous i_flctx lists are ordered by:
> + *
> + * 1) lock owner
> + * 2) lock range start
> + * 3) lock range end
> + *
> + * Obviously, the last two criteria only matter for POSIX locks.
> + */
> +struct file_lock {
> +	struct file_lock *fl_blocker;	/* The lock, that is blocking us */
> +	struct list_head fl_list;	/* link into file_lock_context */
> +	struct hlist_node fl_link;	/* node in global lists */
> +	struct list_head fl_blocked_requests;	/* list of requests with
> +						 * ->fl_blocker pointing here
> +						 */
> +	struct list_head fl_blocked_member;	/* node in
> +						 * ->fl_blocker->fl_blocked_requests
> +						 */
> +	fl_owner_t fl_owner;
> +	unsigned int fl_flags;
> +	unsigned char fl_type;
> +	unsigned int fl_pid;
> +	int fl_link_cpu;		/* what cpu's list is this on? */
> +	wait_queue_head_t fl_wait;
> +	struct file *fl_file;
> +	loff_t fl_start;
> +	loff_t fl_end;
> +
> +	struct fasync_struct *	fl_fasync; /* for lease break notifications */
> +	/* for lease breaks: */
> +	unsigned long fl_break_time;
> +	unsigned long fl_downgrade_time;
> +
> +	const struct file_lock_operations *fl_ops;	/* Callbacks for filesystems */
> +	const struct lock_manager_operations *fl_lmops;	/* Callbacks for lockmanagers */
> +	union {
> +		struct nfs_lock_info	nfs_fl;
> +		struct nfs4_lock_info	nfs4_fl;
> +		struct {
> +			struct list_head link;	/* link in AFS vnode's pending_locks list */
> +			int state;		/* state of grant or error if -ve */
> +			unsigned int	debug_id;
> +		} afs;
> +	} fl_u;
> +} __randomize_layout;
> +
> +struct file_lock_context {
> +	spinlock_t		flc_lock;
> +	struct list_head	flc_flock;
> +	struct list_head	flc_posix;
> +	struct list_head	flc_lease;
> +};
> +
> +#define locks_inode(f) file_inode(f)
> +
> +#ifdef CONFIG_FILE_LOCKING
> +extern int fcntl_getlk(struct file *, unsigned int, struct flock *);
> +extern int fcntl_setlk(unsigned int, struct file *, unsigned int,
> +			struct flock *);
> +
> +#if BITS_PER_LONG == 32
> +extern int fcntl_getlk64(struct file *, unsigned int, struct flock64 *);
> +extern int fcntl_setlk64(unsigned int, struct file *, unsigned int,
> +			struct flock64 *);
> +#endif
> +
> +extern int fcntl_setlease(unsigned int fd, struct file *filp, long arg);
> +extern int fcntl_getlease(struct file *filp);
> +
> +/* fs/locks.c */
> +void locks_free_lock_context(struct inode *inode);
> +void locks_free_lock(struct file_lock *fl);
> +extern void locks_init_lock(struct file_lock *);
> +extern struct file_lock * locks_alloc_lock(void);
> +extern void locks_copy_lock(struct file_lock *, struct file_lock *);
> +extern void locks_copy_conflock(struct file_lock *, struct file_lock *);
> +extern void locks_remove_posix(struct file *, fl_owner_t);
> +extern void locks_remove_file(struct file *);
> +extern void locks_release_private(struct file_lock *);
> +extern void posix_test_lock(struct file *, struct file_lock *);
> +extern int posix_lock_file(struct file *, struct file_lock *, struct file_lock *);
> +extern int locks_delete_block(struct file_lock *);
> +extern int vfs_test_lock(struct file *, struct file_lock *);
> +extern int vfs_lock_file(struct file *, unsigned int, struct file_lock *, struct file_lock *);
> +extern int vfs_cancel_lock(struct file *filp, struct file_lock *fl);
> +bool vfs_inode_has_locks(struct inode *inode);
> +extern int locks_lock_inode_wait(struct inode *inode, struct file_lock *fl);
> +extern int __break_lease(struct inode *inode, unsigned int flags, unsigned int type);
> +extern void lease_get_mtime(struct inode *, struct timespec64 *time);
> +extern int generic_setlease(struct file *, long, struct file_lock **, void **priv);
> +extern int vfs_setlease(struct file *, long, struct file_lock **, void **);
> +extern int lease_modify(struct file_lock *, int, struct list_head *);
> +
> +struct notifier_block;
> +extern int lease_register_notifier(struct notifier_block *);
> +extern void lease_unregister_notifier(struct notifier_block *);
> +
> +struct files_struct;
> +extern void show_fd_locks(struct seq_file *f,
> +			 struct file *filp, struct files_struct *files);
> +extern bool locks_owner_has_blockers(struct file_lock_context *flctx,
> +			fl_owner_t owner);
> +
> +static inline struct file_lock_context *
> +locks_inode_context(const struct inode *inode)
> +{
> +	return smp_load_acquire(&inode->i_flctx);
> +}
> +
> +#else /* !CONFIG_FILE_LOCKING */
> +static inline int fcntl_getlk(struct file *file, unsigned int cmd,
> +			      struct flock __user *user)
> +{
> +	return -EINVAL;
> +}
> +
> +static inline int fcntl_setlk(unsigned int fd, struct file *file,
> +			      unsigned int cmd, struct flock __user *user)
> +{
> +	return -EACCES;
> +}
> +
> +#if BITS_PER_LONG == 32
> +static inline int fcntl_getlk64(struct file *file, unsigned int cmd,
> +				struct flock64 *user)
> +{
> +	return -EINVAL;
> +}
> +
> +static inline int fcntl_setlk64(unsigned int fd, struct file *file,
> +				unsigned int cmd, struct flock64 *user)
> +{
> +	return -EACCES;
> +}
> +#endif
> +static inline int fcntl_setlease(unsigned int fd, struct file *filp, long arg)
> +{
> +	return -EINVAL;
> +}
> +
> +static inline int fcntl_getlease(struct file *filp)
> +{
> +	return F_UNLCK;
> +}
> +
> +static inline void
> +locks_free_lock_context(struct inode *inode)
> +{
> +}
> +
> +static inline void locks_init_lock(struct file_lock *fl)
> +{
> +	return;
> +}
> +
> +static inline void locks_copy_conflock(struct file_lock *new, struct file_lock *fl)
> +{
> +	return;
> +}
> +
> +static inline void locks_copy_lock(struct file_lock *new, struct file_lock *fl)
> +{
> +	return;
> +}
> +
> +static inline void locks_remove_posix(struct file *filp, fl_owner_t owner)
> +{
> +	return;
> +}
> +
> +static inline void locks_remove_file(struct file *filp)
> +{
> +	return;
> +}
> +
> +static inline void posix_test_lock(struct file *filp, struct file_lock *fl)
> +{
> +	return;
> +}
> +
> +static inline int posix_lock_file(struct file *filp, struct file_lock *fl,
> +				  struct file_lock *conflock)
> +{
> +	return -ENOLCK;
> +}
> +
> +static inline int locks_delete_block(struct file_lock *waiter)
> +{
> +	return -ENOENT;
> +}
> +
> +static inline int vfs_test_lock(struct file *filp, struct file_lock *fl)
> +{
> +	return 0;
> +}
> +
> +static inline int vfs_lock_file(struct file *filp, unsigned int cmd,
> +				struct file_lock *fl, struct file_lock *conf)
> +{
> +	return -ENOLCK;
> +}
> +
> +static inline int vfs_cancel_lock(struct file *filp, struct file_lock *fl)
> +{
> +	return 0;
> +}
> +
> +static inline int locks_lock_inode_wait(struct inode *inode, struct file_lock *fl)
> +{
> +	return -ENOLCK;
> +}
> +
> +static inline int __break_lease(struct inode *inode, unsigned int mode, unsigned int type)
> +{
> +	return 0;
> +}
> +
> +static inline void lease_get_mtime(struct inode *inode,
> +				   struct timespec64 *time)
> +{
> +	return;
> +}
> +
> +static inline int generic_setlease(struct file *filp, long arg,
> +				    struct file_lock **flp, void **priv)
> +{
> +	return -EINVAL;
> +}
> +
> +static inline int vfs_setlease(struct file *filp, long arg,
> +			       struct file_lock **lease, void **priv)
> +{
> +	return -EINVAL;
> +}
> +
> +static inline int lease_modify(struct file_lock *fl, int arg,
> +			       struct list_head *dispose)
> +{
> +	return -EINVAL;
> +}
> +
> +struct files_struct;
> +static inline void show_fd_locks(struct seq_file *f,
> +			struct file *filp, struct files_struct *files) {}
> +static inline bool locks_owner_has_blockers(struct file_lock_context *flctx,
> +			fl_owner_t owner)
> +{
> +	return false;
> +}
> +
> +static inline struct file_lock_context *
> +locks_inode_context(const struct inode *inode)
> +{
> +	return NULL;
> +}
> +#endif /* !CONFIG_FILE_LOCKING */
> +
> +static inline int locks_lock_file_wait(struct file *filp, struct file_lock *fl)
> +{
> +	return locks_lock_inode_wait(locks_inode(filp), fl);
> +}
> +
> +#ifdef CONFIG_FILE_LOCKING
> +static inline int break_lease(struct inode *inode, unsigned int mode)
> +{
> +	/*
> +	 * Since this check is lockless, we must ensure that any refcounts
> +	 * taken are done before checking i_flctx->flc_lease. Otherwise, we
> +	 * could end up racing with tasks trying to set a new lease on this
> +	 * file.
> +	 */
> +	smp_mb();
> +	if (inode->i_flctx && !list_empty_careful(&inode->i_flctx->flc_lease))
> +		return __break_lease(inode, mode, FL_LEASE);
> +	return 0;
> +}
> +
> +static inline int break_deleg(struct inode *inode, unsigned int mode)
> +{
> +	/*
> +	 * Since this check is lockless, we must ensure that any refcounts
> +	 * taken are done before checking i_flctx->flc_lease. Otherwise, we
> +	 * could end up racing with tasks trying to set a new lease on this
> +	 * file.
> +	 */
> +	smp_mb();
> +	if (inode->i_flctx && !list_empty_careful(&inode->i_flctx->flc_lease))
> +		return __break_lease(inode, mode, FL_DELEG);
> +	return 0;
> +}
> +
> +static inline int try_break_deleg(struct inode *inode, struct inode **delegated_inode)
> +{
> +	int ret;
> +
> +	ret = break_deleg(inode, O_WRONLY|O_NONBLOCK);
> +	if (ret == -EWOULDBLOCK && delegated_inode) {
> +		*delegated_inode = inode;
> +		ihold(inode);
> +	}
> +	return ret;
> +}
> +
> +static inline int break_deleg_wait(struct inode **delegated_inode)
> +{
> +	int ret;
> +
> +	ret = break_deleg(*delegated_inode, O_WRONLY);
> +	iput(*delegated_inode);
> +	*delegated_inode = NULL;
> +	return ret;
> +}
> +
> +static inline int break_layout(struct inode *inode, bool wait)
> +{
> +	smp_mb();
> +	if (inode->i_flctx && !list_empty_careful(&inode->i_flctx->flc_lease))
> +		return __break_lease(inode,
> +				wait ? O_WRONLY : O_WRONLY | O_NONBLOCK,
> +				FL_LAYOUT);
> +	return 0;
> +}
> +
> +#else /* !CONFIG_FILE_LOCKING */
> +static inline int break_lease(struct inode *inode, unsigned int mode)
> +{
> +	return 0;
> +}
> +
> +static inline int break_deleg(struct inode *inode, unsigned int mode)
> +{
> +	return 0;
> +}
> +
> +static inline int try_break_deleg(struct inode *inode, struct inode **delegated_inode)
> +{
> +	return 0;
> +}
> +
> +static inline int break_deleg_wait(struct inode **delegated_inode)
> +{
> +	BUG();
> +	return 0;
> +}
> +
> +static inline int break_layout(struct inode *inode, bool wait)
> +{
> +	return 0;
> +}
> +
> +#endif /* CONFIG_FILE_LOCKING */
> +
> +#endif /* _LINUX_FILELOCK_H */
> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index 092673178e13..63f355058ab5 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -1003,132 +1003,11 @@ static inline struct file *get_file(struct file *f)
>  #define MAX_LFS_FILESIZE 	((loff_t)LLONG_MAX)
>  #endif
>  
> -#define FL_POSIX	1
> -#define FL_FLOCK	2
> -#define FL_DELEG	4	/* NFSv4 delegation */
> -#define FL_ACCESS	8	/* not trying to lock, just looking */
> -#define FL_EXISTS	16	/* when unlocking, test for existence */
> -#define FL_LEASE	32	/* lease held on this file */
> -#define FL_CLOSE	64	/* unlock on close */
> -#define FL_SLEEP	128	/* A blocking lock */
> -#define FL_DOWNGRADE_PENDING	256 /* Lease is being downgraded */
> -#define FL_UNLOCK_PENDING	512 /* Lease is being broken */
> -#define FL_OFDLCK	1024	/* lock is "owned" by struct file */
> -#define FL_LAYOUT	2048	/* outstanding pNFS layout */
> -#define FL_RECLAIM	4096	/* reclaiming from a reboot server */
> -
> -#define FL_CLOSE_POSIX (FL_POSIX | FL_CLOSE)
> -
> -/*
> - * Special return value from posix_lock_file() and vfs_lock_file() for
> - * asynchronous locking.
> - */
> -#define FILE_LOCK_DEFERRED 1
> -
>  /* legacy typedef, should eventually be removed */
>  typedef void *fl_owner_t;
>  
>  struct file_lock;
>  
> -struct file_lock_operations {
> -	void (*fl_copy_lock)(struct file_lock *, struct file_lock *);
> -	void (*fl_release_private)(struct file_lock *);
> -};
> -
> -struct lock_manager_operations {
> -	void *lm_mod_owner;
> -	fl_owner_t (*lm_get_owner)(fl_owner_t);
> -	void (*lm_put_owner)(fl_owner_t);
> -	void (*lm_notify)(struct file_lock *);	/* unblock callback */
> -	int (*lm_grant)(struct file_lock *, int);
> -	bool (*lm_break)(struct file_lock *);
> -	int (*lm_change)(struct file_lock *, int, struct list_head *);
> -	void (*lm_setup)(struct file_lock *, void **);
> -	bool (*lm_breaker_owns_lease)(struct file_lock *);
> -	bool (*lm_lock_expirable)(struct file_lock *cfl);
> -	void (*lm_expire_lock)(void);
> -};
> -
> -struct lock_manager {
> -	struct list_head list;
> -	/*
> -	 * NFSv4 and up also want opens blocked during the grace period;
> -	 * NLM doesn't care:
> -	 */
> -	bool block_opens;
> -};
> -
> -struct net;
> -void locks_start_grace(struct net *, struct lock_manager *);
> -void locks_end_grace(struct lock_manager *);
> -bool locks_in_grace(struct net *);
> -bool opens_in_grace(struct net *);
> -
> -/* that will die - we need it for nfs_lock_info */
> -#include <linux/nfs_fs_i.h>
> -
> -/*
> - * struct file_lock represents a generic "file lock". It's used to represent
> - * POSIX byte range locks, BSD (flock) locks, and leases. It's important to
> - * note that the same struct is used to represent both a request for a lock and
> - * the lock itself, but the same object is never used for both.
> - *
> - * FIXME: should we create a separate "struct lock_request" to help distinguish
> - * these two uses?
> - *
> - * The varous i_flctx lists are ordered by:
> - *
> - * 1) lock owner
> - * 2) lock range start
> - * 3) lock range end
> - *
> - * Obviously, the last two criteria only matter for POSIX locks.
> - */
> -struct file_lock {
> -	struct file_lock *fl_blocker;	/* The lock, that is blocking us */
> -	struct list_head fl_list;	/* link into file_lock_context */
> -	struct hlist_node fl_link;	/* node in global lists */
> -	struct list_head fl_blocked_requests;	/* list of requests with
> -						 * ->fl_blocker pointing here
> -						 */
> -	struct list_head fl_blocked_member;	/* node in
> -						 * ->fl_blocker->fl_blocked_requests
> -						 */
> -	fl_owner_t fl_owner;
> -	unsigned int fl_flags;
> -	unsigned char fl_type;
> -	unsigned int fl_pid;
> -	int fl_link_cpu;		/* what cpu's list is this on? */
> -	wait_queue_head_t fl_wait;
> -	struct file *fl_file;
> -	loff_t fl_start;
> -	loff_t fl_end;
> -
> -	struct fasync_struct *	fl_fasync; /* for lease break notifications */
> -	/* for lease breaks: */
> -	unsigned long fl_break_time;
> -	unsigned long fl_downgrade_time;
> -
> -	const struct file_lock_operations *fl_ops;	/* Callbacks for filesystems */
> -	const struct lock_manager_operations *fl_lmops;	/* Callbacks for lockmanagers */
> -	union {
> -		struct nfs_lock_info	nfs_fl;
> -		struct nfs4_lock_info	nfs4_fl;
> -		struct {
> -			struct list_head link;	/* link in AFS vnode's pending_locks list */
> -			int state;		/* state of grant or error if -ve */
> -			unsigned int	debug_id;
> -		} afs;
> -	} fl_u;
> -} __randomize_layout;
> -
> -struct file_lock_context {
> -	spinlock_t		flc_lock;
> -	struct list_head	flc_flock;
> -	struct list_head	flc_posix;
> -	struct list_head	flc_lease;
> -};
> -
>  /* The following constant reflects the upper bound of the file/locking space */
>  #ifndef OFFSET_MAX
>  #define INT_LIMIT(x)	(~((x)1 << (sizeof(x)*8 - 1)))
> @@ -1138,211 +1017,6 @@ struct file_lock_context {
>  
>  extern void send_sigio(struct fown_struct *fown, int fd, int band);
>  
> -#define locks_inode(f) file_inode(f)
> -
> -#ifdef CONFIG_FILE_LOCKING
> -extern int fcntl_getlk(struct file *, unsigned int, struct flock *);
> -extern int fcntl_setlk(unsigned int, struct file *, unsigned int,
> -			struct flock *);
> -
> -#if BITS_PER_LONG == 32
> -extern int fcntl_getlk64(struct file *, unsigned int, struct flock64 *);
> -extern int fcntl_setlk64(unsigned int, struct file *, unsigned int,
> -			struct flock64 *);
> -#endif
> -
> -extern int fcntl_setlease(unsigned int fd, struct file *filp, long arg);
> -extern int fcntl_getlease(struct file *filp);
> -
> -/* fs/locks.c */
> -void locks_free_lock_context(struct inode *inode);
> -void locks_free_lock(struct file_lock *fl);
> -extern void locks_init_lock(struct file_lock *);
> -extern struct file_lock * locks_alloc_lock(void);
> -extern void locks_copy_lock(struct file_lock *, struct file_lock *);
> -extern void locks_copy_conflock(struct file_lock *, struct file_lock *);
> -extern void locks_remove_posix(struct file *, fl_owner_t);
> -extern void locks_remove_file(struct file *);
> -extern void locks_release_private(struct file_lock *);
> -extern void posix_test_lock(struct file *, struct file_lock *);
> -extern int posix_lock_file(struct file *, struct file_lock *, struct file_lock *);
> -extern int locks_delete_block(struct file_lock *);
> -extern int vfs_test_lock(struct file *, struct file_lock *);
> -extern int vfs_lock_file(struct file *, unsigned int, struct file_lock *, struct file_lock *);
> -extern int vfs_cancel_lock(struct file *filp, struct file_lock *fl);
> -bool vfs_inode_has_locks(struct inode *inode);
> -extern int locks_lock_inode_wait(struct inode *inode, struct file_lock *fl);
> -extern int __break_lease(struct inode *inode, unsigned int flags, unsigned int type);
> -extern void lease_get_mtime(struct inode *, struct timespec64 *time);
> -extern int generic_setlease(struct file *, long, struct file_lock **, void **priv);
> -extern int vfs_setlease(struct file *, long, struct file_lock **, void **);
> -extern int lease_modify(struct file_lock *, int, struct list_head *);
> -
> -struct notifier_block;
> -extern int lease_register_notifier(struct notifier_block *);
> -extern void lease_unregister_notifier(struct notifier_block *);
> -
> -struct files_struct;
> -extern void show_fd_locks(struct seq_file *f,
> -			 struct file *filp, struct files_struct *files);
> -extern bool locks_owner_has_blockers(struct file_lock_context *flctx,
> -			fl_owner_t owner);
> -
> -static inline struct file_lock_context *
> -locks_inode_context(const struct inode *inode)
> -{
> -	return smp_load_acquire(&inode->i_flctx);
> -}
> -
> -#else /* !CONFIG_FILE_LOCKING */
> -static inline int fcntl_getlk(struct file *file, unsigned int cmd,
> -			      struct flock __user *user)
> -{
> -	return -EINVAL;
> -}
> -
> -static inline int fcntl_setlk(unsigned int fd, struct file *file,
> -			      unsigned int cmd, struct flock __user *user)
> -{
> -	return -EACCES;
> -}
> -
> -#if BITS_PER_LONG == 32
> -static inline int fcntl_getlk64(struct file *file, unsigned int cmd,
> -				struct flock64 *user)
> -{
> -	return -EINVAL;
> -}
> -
> -static inline int fcntl_setlk64(unsigned int fd, struct file *file,
> -				unsigned int cmd, struct flock64 *user)
> -{
> -	return -EACCES;
> -}
> -#endif
> -static inline int fcntl_setlease(unsigned int fd, struct file *filp, long arg)
> -{
> -	return -EINVAL;
> -}
> -
> -static inline int fcntl_getlease(struct file *filp)
> -{
> -	return F_UNLCK;
> -}
> -
> -static inline void
> -locks_free_lock_context(struct inode *inode)
> -{
> -}
> -
> -static inline void locks_init_lock(struct file_lock *fl)
> -{
> -	return;
> -}
> -
> -static inline void locks_copy_conflock(struct file_lock *new, struct file_lock *fl)
> -{
> -	return;
> -}
> -
> -static inline void locks_copy_lock(struct file_lock *new, struct file_lock *fl)
> -{
> -	return;
> -}
> -
> -static inline void locks_remove_posix(struct file *filp, fl_owner_t owner)
> -{
> -	return;
> -}
> -
> -static inline void locks_remove_file(struct file *filp)
> -{
> -	return;
> -}
> -
> -static inline void posix_test_lock(struct file *filp, struct file_lock *fl)
> -{
> -	return;
> -}
> -
> -static inline int posix_lock_file(struct file *filp, struct file_lock *fl,
> -				  struct file_lock *conflock)
> -{
> -	return -ENOLCK;
> -}
> -
> -static inline int locks_delete_block(struct file_lock *waiter)
> -{
> -	return -ENOENT;
> -}
> -
> -static inline int vfs_test_lock(struct file *filp, struct file_lock *fl)
> -{
> -	return 0;
> -}
> -
> -static inline int vfs_lock_file(struct file *filp, unsigned int cmd,
> -				struct file_lock *fl, struct file_lock *conf)
> -{
> -	return -ENOLCK;
> -}
> -
> -static inline int vfs_cancel_lock(struct file *filp, struct file_lock *fl)
> -{
> -	return 0;
> -}
> -
> -static inline int locks_lock_inode_wait(struct inode *inode, struct file_lock *fl)
> -{
> -	return -ENOLCK;
> -}
> -
> -static inline int __break_lease(struct inode *inode, unsigned int mode, unsigned int type)
> -{
> -	return 0;
> -}
> -
> -static inline void lease_get_mtime(struct inode *inode,
> -				   struct timespec64 *time)
> -{
> -	return;
> -}
> -
> -static inline int generic_setlease(struct file *filp, long arg,
> -				    struct file_lock **flp, void **priv)
> -{
> -	return -EINVAL;
> -}
> -
> -static inline int vfs_setlease(struct file *filp, long arg,
> -			       struct file_lock **lease, void **priv)
> -{
> -	return -EINVAL;
> -}
> -
> -static inline int lease_modify(struct file_lock *fl, int arg,
> -			       struct list_head *dispose)
> -{
> -	return -EINVAL;
> -}
> -
> -struct files_struct;
> -static inline void show_fd_locks(struct seq_file *f,
> -			struct file *filp, struct files_struct *files) {}
> -static inline bool locks_owner_has_blockers(struct file_lock_context *flctx,
> -			fl_owner_t owner)
> -{
> -	return false;
> -}
> -
> -static inline struct file_lock_context *
> -locks_inode_context(const struct inode *inode)
> -{
> -	return NULL;
> -}
> -
> -#endif /* !CONFIG_FILE_LOCKING */
> -
>  static inline struct inode *file_inode(const struct file *f)
>  {
>  	return f->f_inode;
> @@ -1353,11 +1027,6 @@ static inline struct dentry *file_dentry(const struct file *file)
>  	return d_real(file->f_path.dentry, file_inode(file));
>  }
>  
> -static inline int locks_lock_file_wait(struct file *filp, struct file_lock *fl)
> -{
> -	return locks_lock_inode_wait(locks_inode(filp), fl);
> -}
> -
>  struct fasync_struct {
>  	rwlock_t		fa_lock;
>  	int			magic;
> @@ -2641,96 +2310,6 @@ extern struct kobject *fs_kobj;
>  
>  #define MAX_RW_COUNT (INT_MAX & PAGE_MASK)
>  
> -#ifdef CONFIG_FILE_LOCKING
> -static inline int break_lease(struct inode *inode, unsigned int mode)
> -{
> -	/*
> -	 * Since this check is lockless, we must ensure that any refcounts
> -	 * taken are done before checking i_flctx->flc_lease. Otherwise, we
> -	 * could end up racing with tasks trying to set a new lease on this
> -	 * file.
> -	 */
> -	smp_mb();
> -	if (inode->i_flctx && !list_empty_careful(&inode->i_flctx->flc_lease))
> -		return __break_lease(inode, mode, FL_LEASE);
> -	return 0;
> -}
> -
> -static inline int break_deleg(struct inode *inode, unsigned int mode)
> -{
> -	/*
> -	 * Since this check is lockless, we must ensure that any refcounts
> -	 * taken are done before checking i_flctx->flc_lease. Otherwise, we
> -	 * could end up racing with tasks trying to set a new lease on this
> -	 * file.
> -	 */
> -	smp_mb();
> -	if (inode->i_flctx && !list_empty_careful(&inode->i_flctx->flc_lease))
> -		return __break_lease(inode, mode, FL_DELEG);
> -	return 0;
> -}
> -
> -static inline int try_break_deleg(struct inode *inode, struct inode **delegated_inode)
> -{
> -	int ret;
> -
> -	ret = break_deleg(inode, O_WRONLY|O_NONBLOCK);
> -	if (ret == -EWOULDBLOCK && delegated_inode) {
> -		*delegated_inode = inode;
> -		ihold(inode);
> -	}
> -	return ret;
> -}
> -
> -static inline int break_deleg_wait(struct inode **delegated_inode)
> -{
> -	int ret;
> -
> -	ret = break_deleg(*delegated_inode, O_WRONLY);
> -	iput(*delegated_inode);
> -	*delegated_inode = NULL;
> -	return ret;
> -}
> -
> -static inline int break_layout(struct inode *inode, bool wait)
> -{
> -	smp_mb();
> -	if (inode->i_flctx && !list_empty_careful(&inode->i_flctx->flc_lease))
> -		return __break_lease(inode,
> -				wait ? O_WRONLY : O_WRONLY | O_NONBLOCK,
> -				FL_LAYOUT);
> -	return 0;
> -}
> -
> -#else /* !CONFIG_FILE_LOCKING */
> -static inline int break_lease(struct inode *inode, unsigned int mode)
> -{
> -	return 0;
> -}
> -
> -static inline int break_deleg(struct inode *inode, unsigned int mode)
> -{
> -	return 0;
> -}
> -
> -static inline int try_break_deleg(struct inode *inode, struct inode **delegated_inode)
> -{
> -	return 0;
> -}
> -
> -static inline int break_deleg_wait(struct inode **delegated_inode)
> -{
> -	BUG();
> -	return 0;
> -}
> -
> -static inline int break_layout(struct inode *inode, bool wait)
> -{
> -	return 0;
> -}
> -
> -#endif /* CONFIG_FILE_LOCKING */
> -
>  /* fs/open.c */
>  struct audit_names;
>  struct filename {
> diff --git a/include/linux/lockd/xdr.h b/include/linux/lockd/xdr.h
> index 67e4a2c5500b..b60fbcd8cdfa 100644
> --- a/include/linux/lockd/xdr.h
> +++ b/include/linux/lockd/xdr.h
> @@ -11,6 +11,7 @@
>  #define LOCKD_XDR_H
>  
>  #include <linux/fs.h>
> +#include <linux/filelock.h>
>  #include <linux/nfs.h>
>  #include <linux/sunrpc/xdr.h>
>  
> -- 
> 2.38.1
> 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
