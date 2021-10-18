Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7AE432041
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 16:51:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcTz5-0006QV-Q3; Mon, 18 Oct 2021 14:51:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcTz4-0006QI-CF
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:51:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2sONkJBvmJgTAHpzc86BA8e42PAvAoDrxKKcAcC4xT4=; b=T3AxpRfz8qws4wdUi/Ufp1s79r
 3Vj57zZBM6aQqgyV4xyf68Tp9PYjU4MWKBV0fd8M2V+4NF6SLFtnzsxXzoayXQs+AV0qQCjD46Q1P
 5E6a5+sP8fAavMypyTxm15sD6f0v5jlLzs+P6RUv2GF5l/S1kBh3wGsLC2+ZK0KkgcEU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2sONkJBvmJgTAHpzc86BA8e42PAvAoDrxKKcAcC4xT4=; b=V+m7OPOgow7GfDjBEo+Y4uRJ+s
 9mqvxpNarPINR8ga2flPSand9S1F//vzh93S31wfrplq7vMg0yVCeVxI3XojNJqkQS1pzMLR46npN
 rx439Ast4HbjuUte/MuZT+g1SmCU+kJzQ2dvmUn8yy5EaHmn09ozKjUrTPY8JuMKA1o0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcTz2-000386-4x
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 14:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634568678;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2sONkJBvmJgTAHpzc86BA8e42PAvAoDrxKKcAcC4xT4=;
 b=PaSg29MqowhoDp1bJo33ekLQ2mcsFt0Q/ijSVwzJYVJYjYm7LcXOFZyllXlegt4lN6NxsX
 XzZNKqAEGhzxkVGYB1I8S4n98oLvrfaWmdddS7AY3z9l/XUltoERscOtm/9IpLApaA+ZLh
 dxPfowNWam+kf+kaxA1m683IBZN3yr0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-BQPyF-z-POWSD8t89bprvw-1; Mon, 18 Oct 2021 10:51:15 -0400
X-MC-Unique: BQPyF-z-POWSD8t89bprvw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6450100CCC6;
 Mon, 18 Oct 2021 14:51:12 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 27CFF68700;
 Mon, 18 Oct 2021 14:51:06 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:51:05 +0100
Message-ID: <163456866523.2614702.2234665737111683988.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use an inode flag, I_PINNING_FSCACHE_WB, to indicate that
 a cookie is pinned in use by that inode for the purposes of writeback. Pinning
 is necessary because the in-use pin from the open file is released before
 the writeback takes place, but if the resources aren't pinned, the dirty
 data can't be written to the cache. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcTz2-000386-4x
Subject: [V9fs-developer] [PATCH 03/67] vfs,
 fscache: Force ->write_inode() to occur if cookie pinned for
 writeback
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
Cc: Steve French <sfrench@samba.org>, linux-nfs@vger.kernel.org,
 Jeff Layton <jlayton@redhat.com>, linux-cifs@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Use an inode flag, I_PINNING_FSCACHE_WB, to indicate that a cookie is
pinned in use by that inode for the purposes of writeback.

Pinning is necessary because the in-use pin from the open file is released
before the writeback takes place, but if the resources aren't pinned, the
dirty data can't be written to the cache.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/fs-writeback.c         |    8 ++++++++
 include/linux/fs.h        |    3 +++
 include/linux/fscache.h   |    1 +
 include/linux/writeback.h |    1 +
 4 files changed, 13 insertions(+)

diff --git a/fs/fs-writeback.c b/fs/fs-writeback.c
index 81ec192ce067..f3122831c4fe 100644
--- a/fs/fs-writeback.c
+++ b/fs/fs-writeback.c
@@ -1666,6 +1666,13 @@ __writeback_single_inode(struct inode *inode, struct writeback_control *wbc)
 
 	if (mapping_tagged(mapping, PAGECACHE_TAG_DIRTY))
 		inode->i_state |= I_DIRTY_PAGES;
+	else if (unlikely(inode->i_state & I_PINNING_FSCACHE_WB)) {
+		if (!(inode->i_state & I_DIRTY_PAGES)) {
+			inode->i_state &= ~I_PINNING_FSCACHE_WB;
+			wbc->unpinned_fscache_wb = true;
+			dirty |= I_PINNING_FSCACHE_WB; /* Cause write_inode */
+		}
+	}
 
 	spin_unlock(&inode->i_lock);
 
@@ -1675,6 +1682,7 @@ __writeback_single_inode(struct inode *inode, struct writeback_control *wbc)
 		if (ret == 0)
 			ret = err;
 	}
+	wbc->unpinned_fscache_wb = false;
 	trace_writeback_single_inode(inode, wbc, nr_to_write);
 	return ret;
 }
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 197493507744..336739fed3e9 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -2420,6 +2420,8 @@ static inline void kiocb_clone(struct kiocb *kiocb, struct kiocb *kiocb_src,
  *			Used to detect that mark_inode_dirty() should not move
  * 			inode between dirty lists.
  *
+ * I_PINNING_FSCACHE_WB	Inode is pinning an fscache object for writeback.
+ *
  * Q: What is the difference between I_WILL_FREE and I_FREEING?
  */
 #define I_DIRTY_SYNC		(1 << 0)
@@ -2442,6 +2444,7 @@ static inline void kiocb_clone(struct kiocb *kiocb, struct kiocb *kiocb_src,
 #define I_CREATING		(1 << 15)
 #define I_DONTCACHE		(1 << 16)
 #define I_SYNC_QUEUED		(1 << 17)
+#define I_PINNING_FSCACHE_WB	(1 << 18)
 
 #define I_DIRTY_INODE (I_DIRTY_SYNC | I_DIRTY_DATASYNC)
 #define I_DIRTY (I_DIRTY_INODE | I_DIRTY_PAGES)
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index 01558d155799..ba4878b56717 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -19,6 +19,7 @@
 #include <linux/pagemap.h>
 #include <linux/pagevec.h>
 #include <linux/list_bl.h>
+#include <linux/writeback.h>
 #include <linux/netfs.h>
 
 #if defined(CONFIG_FSCACHE) || defined(CONFIG_FSCACHE_MODULE)
diff --git a/include/linux/writeback.h b/include/linux/writeback.h
index d1f65adf6a26..2fda288600d3 100644
--- a/include/linux/writeback.h
+++ b/include/linux/writeback.h
@@ -69,6 +69,7 @@ struct writeback_control {
 	unsigned for_reclaim:1;		/* Invoked from the page allocator */
 	unsigned range_cyclic:1;	/* range_start is cyclic */
 	unsigned for_sync:1;		/* sync(2) WB_SYNC_ALL writeback */
+	unsigned unpinned_fscache_wb:1;	/* Cleared I_PINNING_FSCACHE_WB */
 
 	/*
 	 * When writeback IOs are bounced through async layers, only the




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
