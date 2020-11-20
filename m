Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E45BE2BADBF
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:22:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg8El-0005wX-ML; Fri, 20 Nov 2020 15:22:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg8D2-0005LJ-EH
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GuEroWovClf2Gd9dj2EpHluDnXBhlEyesXJwX09INbk=; b=EqaS0BtSklGZR//Im/bD4GPrvd
 xVO9FA5Fasfl/nebRCH6TKhW7vkh+PBHKH+QZys+6fLZYHraO1uva1bvirKh5s+a/zxxjfkZgBY8y
 EawWb03jXR3neKvAiMk5s8wEJXn1cDwJxDJ1KcN8NPpFt5CjvyR3WIzgVm4iXajeYzac=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GuEroWovClf2Gd9dj2EpHluDnXBhlEyesXJwX09INbk=; b=ZKFMdCKDY5168++cBd6S8iEiWG
 DNnfP2ARDsL/WrE4GU57Y1/bQaWEBHh7swjar3KsRB3s5YfOtrwjJe1YTPE2pwPG91NwGeK45Tf/N
 yNzc9KtrlpeSOTeodguzyYbji7crpNsWpZ3Ko8ufzLLqWKMBGB77Pg9f26AwAWzMKmFk=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg8Cc-003Ccw-MW
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605885592;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GuEroWovClf2Gd9dj2EpHluDnXBhlEyesXJwX09INbk=;
 b=GI5JYEToALtnTFb1l4QXReY4e6qA/xETBbLUIA87ODokTvIKsMfR7D2R3VOgK3j8ODHHo3
 PiQ9Uv4EupzV/+rSiKW5v5COPkKHqUZzEM0QSFmQdCKD5+OAZSXYtUauOQnE9kkrw6xEaC
 PuGDNfweIOA8F9zjhmVs2yveUYPVJjE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-518-zOHQpZgrMcWIL2Rf0top9w-1; Fri, 20 Nov 2020 10:19:49 -0500
X-MC-Unique: zOHQpZgrMcWIL2Rf0top9w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A30419251A1;
 Fri, 20 Nov 2020 15:19:47 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4E5B95D6AD;
 Fri, 20 Nov 2020 15:19:44 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:19:43 +0000
Message-ID: <160588558350.3465195.13840089242353769411.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg8Cc-003Ccw-MW
Subject: [V9fs-developer] [RFC PATCH 76/76] afs: Fix speculative status
 fetch going out of order wrt to modifications
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

When doing a lookup in a directory, the afs filesystem uses a bulk status
fetch to speculatively retrieve the statuses of up to 48 other vnodes found
in the same directory and it will then either update extant inodes or
create new ones - effectively doing 'lookup ahead'.

To avoid the possibility of deadlocking itself, however, the filesystem
doesn't lock all of those inodes; rather just the directory inode is locked
(by the VFS).  When the operation completes, afs_inode_init_from_status()
or afs_apply_status() is called, depending on whether the inode already
exists, to commit the new status.

A case exists, however, where the speculative status fetch operation may
straddle a modification operation on one of those vnodes.  What can then
happen is that the speculative bulk status RPC retrieves the old status,
and whilst that is happening, the modification happens - which returns an
updated status, then the modification status is committed, then we attempt
to commit the speculative status.

This results in something like the following being seen in dmesg:

	kAFS: vnode modified {100058:861} 8->9 YFS.InlineBulkStatus

showing that for vnode 861 on volume 100058, we saw YFS.InlineBulkStatus
say that the vnode had data version 8 when we'd already recorded version 9
due to a local modification.  This was causing the cache to be invalidated
for that vnode when it shouldn't have been.  If it happens on a data file,
this might lead to local changes being lost.

Fix this by ignoring speculative status updates if the data version doesn't
match the expected value.

Note that it is possible to get a DV regression if a volume gets restored
from a backup - but we should get a callback break in such a case that
should trigger a recheck anyway.  It might be worth checking the volume
creation time in the volsync info and, if a change is observed in that (as
would happen on a restore), invalidate all caches associated with the
volume.

Fixes: 5cf9dd55a0ec ("afs: Prospectively look up extra files when doing a single lookup")
Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/dir.c      |    1 +
 fs/afs/inode.c    |    8 ++++++++
 fs/afs/internal.h |    1 +
 3 files changed, 10 insertions(+)

diff --git a/fs/afs/dir.c b/fs/afs/dir.c
index 26ac5cfdf3af..157529b0e422 100644
--- a/fs/afs/dir.c
+++ b/fs/afs/dir.c
@@ -900,6 +900,7 @@ static struct inode *afs_do_lookup(struct inode *dir, struct dentry *dentry,
 				vp->cb_break_before = afs_calc_vnode_cb_break(vnode);
 				vp->vnode = vnode;
 				vp->put_vnode = true;
+				vp->speculative = true; /* vnode not locked */
 			}
 		}
 	}
diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 9d8f759f77f7..acb47a862893 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -295,6 +295,13 @@ void afs_vnode_commit_status(struct afs_operation *op, struct afs_vnode_param *v
 			op->flags &= ~AFS_OPERATION_DIR_CONFLICT;
 		}
 	} else if (vp->scb.have_status) {
+		if (vp->dv_before + vp->dv_delta != vp->scb.status.data_version &&
+		    vp->speculative)
+			/* Ignore the result of a speculative bulk status fetch
+			 * if it splits around a modification op, thereby
+			 * appearing to regress the data version.
+			 */
+			goto out;
 		afs_apply_status(op, vp);
 		if (vp->scb.have_cb)
 			afs_apply_callback(op, vp);
@@ -306,6 +313,7 @@ void afs_vnode_commit_status(struct afs_operation *op, struct afs_vnode_param *v
 		}
 	}
 
+out:
 	write_sequnlock(&vnode->cb_lock);
 
 	if (vp->scb.have_status)
diff --git a/fs/afs/internal.h b/fs/afs/internal.h
index e80fb6fe15b3..07471deeb6a8 100644
--- a/fs/afs/internal.h
+++ b/fs/afs/internal.h
@@ -760,6 +760,7 @@ struct afs_vnode_param {
 	bool			update_ctime:1;	/* Need to update the ctime */
 	bool			set_size:1;	/* Must update i_size */
 	bool			op_unlinked:1;	/* True if file was unlinked by op */
+	bool			speculative:1;	/* T if speculative status fetch (no vnode lock) */
 };
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
