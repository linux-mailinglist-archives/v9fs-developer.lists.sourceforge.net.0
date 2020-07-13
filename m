Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D460321DD38
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jul 2020 18:37:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jv1SP-0007sl-LJ; Mon, 13 Jul 2020 16:37:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1jv1SO-0007sY-2y
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nkl9/v1z2n5oTxi5AR2lnE/ZboSNKokLUsnZ/l22yc8=; b=L/s5k4mCpcfX4j+1TdSyYrZ8PM
 LuSh0CtMtL5YnquMbr8ReLMglnfBcnESNmZWDMFpFQ5X9AvACipG8mOjjAZOLAV6ets9frLJjNRif
 Lwv5OUjQKqHJxzZ1gl2gBnwkduFJgsmXMDE+PpfhhaBFtOh3cZtGuU7UHpnVU8hXUlIg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nkl9/v1z2n5oTxi5AR2lnE/ZboSNKokLUsnZ/l22yc8=; b=KKPdabb+CKItTJNF/fl78XOGZH
 PaIq/JYqlHM9CIN8B9LQ3/Os+r9/GMrzPaJ3aSTbFvWs5+w0sie0FqjCcfD6yB3AdgCzstBvQwaVk
 cDxV+54CveOTpVsazpBz8F/OzMz0ivdDJ494tXGC/40KS1oRca8GPcH6uFM8E/Tq3D1A=;
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1jv1SM-001hks-TZ
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jul 2020 16:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594658245;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nkl9/v1z2n5oTxi5AR2lnE/ZboSNKokLUsnZ/l22yc8=;
 b=T+2Xf2ReSAV1RVMRMFdWlyUCFCuzI0HCiuS0vtFfQ4rXCHkw9COqsHbA3hlgmz50ftnW7g
 9oOzxKNYwYNLJfWK8Lhfq3o7PAVg1mQcOlIHsD55QPyeBQSONzctWZ6P3mL0YtGQs9PGS5
 b4smWybX9qyDpwuIMqCsxZGswosP24Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-45-T9ZeSXHxM2Grd9KFjb2RhA-1; Mon, 13 Jul 2020 12:37:15 -0400
X-MC-Unique: T9ZeSXHxM2Grd9KFjb2RhA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4BCE1080;
 Mon, 13 Jul 2020 16:37:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-113.rdu2.redhat.com
 [10.10.112.113])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9B20760C87;
 Mon, 13 Jul 2020 16:37:08 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Matthew Wilcox <willy@infradead.org>
Date: Mon, 13 Jul 2020 17:37:07 +0100
Message-ID: <159465822787.1377938.10874079234418111929.stgit@warthog.procyon.org.uk>
In-Reply-To: <159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk>
References: <159465821598.1377938.2046362270225008168.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.22
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jv1SM-001hks-TZ
Subject: [V9fs-developer] [PATCH 01/13] afs: Fix interruption of operations
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
 Jeff Layton <jlayton@redhat.com>, Dave Wysochanski <dwysocha@redhat.com>,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The afs filesystem driver allows unstarted operations to be cancelled by
signal, but most of these can easily be restarted (mkdir for example).  The
primary culprits for reproducing this are those applications that use
SIGALRM to display a progress counter.

File lock-extension operation is marked uninterruptible as we have a
limited time in which to do it, and the release op is marked
uninterruptible also as if we fail to unlock a file, we'll have to wait 20
mins before anyone can lock it again.

The store operation logs a warning if it gets interruption, e.g.:

	kAFS: Unexpected error from FS.StoreData -4

because it's run from the background - but it can also be run from
fdatasync()-type things.  However, store options aren't marked
interruptible at the moment.

Fix this in the following ways:

 (1) Mark store operations as uninterruptible.  It might make sense to
     relax this for certain situations, but I'm not sure how to make sure
     that background store ops aren't affected by signals to foreground
     processes that happen to trigger them.

 (2) In afs_get_io_locks(), where we're getting the serialisation lock for
     talking to the fileserver, return ERESTARTSYS rather than EINTR
     because a lot of the operations (e.g. mkdir) are restartable if we
     haven't yet started sending the op to the server.

Fixes: e49c7b2f6de7 ("afs: Build an abstraction around an "operation" concept")
Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/fs_operation.c |    4 ++--
 fs/afs/write.c        |    1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/afs/fs_operation.c b/fs/afs/fs_operation.c
index c264839b2fd0..24fd163c6323 100644
--- a/fs/afs/fs_operation.c
+++ b/fs/afs/fs_operation.c
@@ -71,7 +71,7 @@ static bool afs_get_io_locks(struct afs_operation *op)
 		swap(vnode, vnode2);
 
 	if (mutex_lock_interruptible(&vnode->io_lock) < 0) {
-		op->error = -EINTR;
+		op->error = -ERESTARTSYS;
 		op->flags |= AFS_OPERATION_STOP;
 		_leave(" = f [I 0]");
 		return false;
@@ -80,7 +80,7 @@ static bool afs_get_io_locks(struct afs_operation *op)
 
 	if (vnode2) {
 		if (mutex_lock_interruptible_nested(&vnode2->io_lock, 1) < 0) {
-			op->error = -EINTR;
+			op->error = -ERESTARTSYS;
 			op->flags |= AFS_OPERATION_STOP;
 			mutex_unlock(&vnode->io_lock);
 			op->flags &= ~AFS_OPERATION_LOCK_0;
diff --git a/fs/afs/write.c b/fs/afs/write.c
index abfc8d3dc20c..60918b80b729 100644
--- a/fs/afs/write.c
+++ b/fs/afs/write.c
@@ -449,6 +449,7 @@ static int afs_store_data(struct address_space *mapping,
 	op->store.first_offset = offset;
 	op->store.last_to = to;
 	op->mtime = vnode->vfs_inode.i_mtime;
+	op->flags |= AFS_OPERATION_UNINTR;
 	op->ops = &afs_store_data_operation;
 
 try_next_key:




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
