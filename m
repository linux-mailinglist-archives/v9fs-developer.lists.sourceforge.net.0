Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D156347DB61
	for <lists+v9fs-developer@lfdr.de>; Thu, 23 Dec 2021 00:31:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n0B4f-0002mH-B3; Wed, 22 Dec 2021 23:31:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1n0B4e-0002m9-3G
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SsxjmiBG3s/RiZ1cKU32UcLBLkEapVo/dBju34wf7uQ=; b=EYA7mEFaQxGTC8Oj21aGqnol2/
 9oidzEA7cneCM6UXmkNWfE0pZVSYN0v7038e6yBu0BXm0waAhUPyJVlEU8VDNDcsjoIFidGyEBxVs
 0ee5gLifSvx5HbOYq9fHNCO1jMP9Y8bn0m4k/DVRlKgUZC4OynJzn+0z8+0RcYF08QYg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SsxjmiBG3s/RiZ1cKU32UcLBLkEapVo/dBju34wf7uQ=; b=MRnJVFTsODJsiJiQf/wwYLa00K
 Uq8a+ZP+ZBO3/4xXqxWbB56tWqwMrYS7CW4uI0wp92pojWM1n8jv2qyZikhQgryd5n7djxqc/2ks6
 JS8Y7yvsoLDoTvb6r8BqOWYlUYUwXLc6USXB5/49XL1kQ+AuTJ1Vpo1PiYiy8ajdegvc=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n0B4d-0007kw-M7
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Dec 2021 23:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640215861;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=SsxjmiBG3s/RiZ1cKU32UcLBLkEapVo/dBju34wf7uQ=;
 b=cXV6C63hSRisyhUMZRXLGw/gswgs0j9ya+YVEgM63INC7cWiaMxqPnkPAWaK/ZtpOAsuCO
 kEqCWP5KDGUeUvWUCC6W7VDMEaxhgLtCkmHi3EL4Vj3pIyHYonB2Twc6ELuMjdj2NapSg0
 2eE9GyvAuzkIFOUZjmphie3vlTuQJZI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-491-ufE9uJVCOI29J8og0LT_LQ-1; Wed, 22 Dec 2021 18:30:58 -0500
X-MC-Unique: ufE9uJVCOI29J8og0LT_LQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75E201006AA4;
 Wed, 22 Dec 2021 23:30:54 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.165])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0ED718476B;
 Wed, 22 Dec 2021 23:30:50 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Wed, 22 Dec 2021 23:30:50 +0000
Message-ID: <164021585020.640689.6765214932458435472.stgit@warthog.procyon.org.uk>
In-Reply-To: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
References: <164021479106.640689.17404516570194656552.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: Jeff Layton <jlayton@kernel.org> When updating the
 backing
 store from the pagecache (a'la writepage or writepages), write to the cache
 first. This allows us to keep caching files even when they are being written, 
 as long as we have a [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1n0B4d-0007kw-M7
Subject: [V9fs-developer] [PATCH v4 65/68] ceph: add fscache writeback
 support
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
 linux-cifs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, linux-afs@lists.infradead.org,
 dhowells@redhat.com, v9fs-developer@lists.sourceforge.net,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 JeffleXu <jefflexu@linux.alibaba.com>, ceph-devel@vger.kernel.org,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Jeff Layton <jlayton@kernel.org>

When updating the backing store from the pagecache (a'la writepage or
writepages), write to the cache first. This allows us to keep caching
files even when they are being written, as long as we have appropriate
caps.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
Link: https://lore.kernel.org/r/20211129162907.149445-3-jlayton@kernel.org/ # v1
Link: https://lore.kernel.org/r/20211207134451.66296-3-jlayton@kernel.org/ # v2
Link: https://lore.kernel.org/r/163906985808.143852.1383891557313186623.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/163967190257.1823006.16713609520911954804.stgit@warthog.procyon.org.uk/ # v3
---

 fs/ceph/addr.c |   67 +++++++++++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 59 insertions(+), 8 deletions(-)

diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
index 0ffc4c8d7c10..e836f8f1d4f8 100644
--- a/fs/ceph/addr.c
+++ b/fs/ceph/addr.c
@@ -5,7 +5,6 @@
 #include <linux/fs.h>
 #include <linux/mm.h>
 #include <linux/pagemap.h>
-#include <linux/writeback.h>	/* generic_writepages */
 #include <linux/slab.h>
 #include <linux/pagevec.h>
 #include <linux/task_io_accounting_ops.h>
@@ -384,6 +383,38 @@ static void ceph_readahead(struct readahead_control *ractl)
 	netfs_readahead(ractl, &ceph_netfs_read_ops, (void *)(uintptr_t)got);
 }
 
+#ifdef CONFIG_CEPH_FSCACHE
+static void ceph_set_page_fscache(struct page *page)
+{
+	set_page_fscache(page);
+}
+
+static void ceph_fscache_write_terminated(void *priv, ssize_t error, bool was_async)
+{
+	struct inode *inode = priv;
+
+	if (IS_ERR_VALUE(error) && error != -ENOBUFS)
+		ceph_fscache_invalidate(inode, false);
+}
+
+static void ceph_fscache_write_to_cache(struct inode *inode, u64 off, u64 len, bool caching)
+{
+	struct ceph_inode_info *ci = ceph_inode(inode);
+	struct fscache_cookie *cookie = ceph_fscache_cookie(ci);
+
+	fscache_write_to_cache(cookie, inode->i_mapping, off, len, i_size_read(inode),
+			       ceph_fscache_write_terminated, inode, caching);
+}
+#else
+static inline void ceph_set_page_fscache(struct page *page)
+{
+}
+
+static inline void ceph_fscache_write_to_cache(struct inode *inode, u64 off, u64 len, bool caching)
+{
+}
+#endif /* CONFIG_CEPH_FSCACHE */
+
 struct ceph_writeback_ctl
 {
 	loff_t i_size;
@@ -499,6 +530,7 @@ static int writepage_nounlock(struct page *page, struct writeback_control *wbc)
 	struct ceph_writeback_ctl ceph_wbc;
 	struct ceph_osd_client *osdc = &fsc->client->osdc;
 	struct ceph_osd_request *req;
+	bool caching = ceph_is_cache_enabled(inode);
 
 	dout("writepage %p idx %lu\n", page, page->index);
 
@@ -537,16 +569,17 @@ static int writepage_nounlock(struct page *page, struct writeback_control *wbc)
 	    CONGESTION_ON_THRESH(fsc->mount_options->congestion_kb))
 		set_bdi_congested(inode_to_bdi(inode), BLK_RW_ASYNC);
 
-	set_page_writeback(page);
 	req = ceph_osdc_new_request(osdc, &ci->i_layout, ceph_vino(inode), page_off, &len, 0, 1,
 				    CEPH_OSD_OP_WRITE, CEPH_OSD_FLAG_WRITE, snapc,
 				    ceph_wbc.truncate_seq, ceph_wbc.truncate_size,
 				    true);
-	if (IS_ERR(req)) {
-		redirty_page_for_writepage(wbc, page);
-		end_page_writeback(page);
+	if (IS_ERR(req))
 		return PTR_ERR(req);
-	}
+
+	set_page_writeback(page);
+	if (caching)
+		ceph_set_page_fscache(page);
+	ceph_fscache_write_to_cache(inode, page_off, len, caching);
 
 	/* it may be a short write due to an object boundary */
 	WARN_ON_ONCE(len > thp_size(page));
@@ -605,6 +638,9 @@ static int ceph_writepage(struct page *page, struct writeback_control *wbc)
 	struct inode *inode = page->mapping->host;
 	BUG_ON(!inode);
 	ihold(inode);
+
+	wait_on_page_fscache(page);
+
 	err = writepage_nounlock(page, wbc);
 	if (err == -ERESTARTSYS) {
 		/* direct memory reclaimer was killed by SIGKILL. return 0
@@ -726,6 +762,7 @@ static int ceph_writepages_start(struct address_space *mapping,
 	struct ceph_writeback_ctl ceph_wbc;
 	bool should_loop, range_whole = false;
 	bool done = false;
+	bool caching = ceph_is_cache_enabled(inode);
 
 	dout("writepages_start %p (mode=%s)\n", inode,
 	     wbc->sync_mode == WB_SYNC_NONE ? "NONE" :
@@ -849,7 +886,7 @@ static int ceph_writepages_start(struct address_space *mapping,
 				unlock_page(page);
 				break;
 			}
-			if (PageWriteback(page)) {
+			if (PageWriteback(page) || PageFsCache(page)) {
 				if (wbc->sync_mode == WB_SYNC_NONE) {
 					dout("%p under writeback\n", page);
 					unlock_page(page);
@@ -857,6 +894,7 @@ static int ceph_writepages_start(struct address_space *mapping,
 				}
 				dout("waiting on writeback %p\n", page);
 				wait_on_page_writeback(page);
+				wait_on_page_fscache(page);
 			}
 
 			if (!clear_page_dirty_for_io(page)) {
@@ -989,9 +1027,19 @@ static int ceph_writepages_start(struct address_space *mapping,
 		op_idx = 0;
 		for (i = 0; i < locked_pages; i++) {
 			u64 cur_offset = page_offset(pages[i]);
+			/*
+			 * Discontinuity in page range? Ceph can handle that by just passing
+			 * multiple extents in the write op.
+			 */
 			if (offset + len != cur_offset) {
+				/* If it's full, stop here */
 				if (op_idx + 1 == req->r_num_ops)
 					break;
+
+				/* Kick off an fscache write with what we have so far. */
+				ceph_fscache_write_to_cache(inode, offset, len, caching);
+
+				/* Start a new extent */
 				osd_req_op_extent_dup_last(req, op_idx,
 							   cur_offset - offset);
 				dout("writepages got pages at %llu~%llu\n",
@@ -1002,14 +1050,17 @@ static int ceph_writepages_start(struct address_space *mapping,
 				osd_req_op_extent_update(req, op_idx, len);
 
 				len = 0;
-				offset = cur_offset; 
+				offset = cur_offset;
 				data_pages = pages + i;
 				op_idx++;
 			}
 
 			set_page_writeback(pages[i]);
+			if (caching)
+				ceph_set_page_fscache(pages[i]);
 			len += thp_size(page);
 		}
+		ceph_fscache_write_to_cache(inode, offset, len, caching);
 
 		if (ceph_wbc.size_stable) {
 			len = min(len, ceph_wbc.i_size - offset);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
