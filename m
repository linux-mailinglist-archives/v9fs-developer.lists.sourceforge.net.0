Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD91D2BAD9F
	for <lists+v9fs-developer@lfdr.de>; Fri, 20 Nov 2020 16:22:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kg8Ee-0005sb-KW; Fri, 20 Nov 2020 15:22:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1kg8BC-0004xK-19
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:18:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uT6m+jeeJ+k/ThNtk7FZdtAbHQfYTHJUGTUJLa5RMhI=; b=F9Gh3pX6umazd9+tQY3mYd8q/s
 4WpRg3em74/MM619gqHwyKOHGIM+pFC4Qxm5n52Bz4LW+iFpM6xP45LZDHt2QTer6ptDXxYs+ci7n
 NaJijuLoc7PmEHUCbSPVRR/AJn4bScGrBpcuX6J7gJchLDa2vSP5qUHEowCFZgtDHhs4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uT6m+jeeJ+k/ThNtk7FZdtAbHQfYTHJUGTUJLa5RMhI=; b=Ds3CBMP6SQycWgEXY6GGRbMI8w
 9FZ533C4k/9ydMDcDws9SCuJhm2cFF+fpgLw/qOCn1u9twIOILklBUylb+dOYE+s3NPVY8YN4g+y9
 hF/5tpIf2CytSYszXRdAAGXKu50tPq2Ltvp9Au17G2biVhvCrsuRAWuBvd8apR9w69os=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kg8AT-00Adir-IT
 for v9fs-developer@lists.sourceforge.net; Fri, 20 Nov 2020 15:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605885452;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uT6m+jeeJ+k/ThNtk7FZdtAbHQfYTHJUGTUJLa5RMhI=;
 b=bhsNtVlKjPacboESdq2/dqREpGc5gYYtlnapuVnRHLQ112gpaJlrVRA4q9b1CADAXpVJtv
 RHKIzbkZSsrVOwwfAVD7Qwr0bbURTpaXpUQLfWnNku/TqxVCuCEdu6YEKmyH/x0PIcDHCW
 OldqDB23MYSIjVYucTZEFu5ElJfeUHY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-67-pY5LpZ5eO5unXfSU3iJhuA-1; Fri, 20 Nov 2020 10:17:28 -0500
X-MC-Unique: pY5LpZ5eO5unXfSU3iJhuA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D12221005D59;
 Fri, 20 Nov 2020 15:17:26 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-112-246.rdu2.redhat.com
 [10.10.112.246])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 79D5910023AC;
 Fri, 20 Nov 2020 15:17:20 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 20 Nov 2020 15:17:19 +0000
Message-ID: <160588543960.3465195.2792938973035886168.stgit@warthog.procyon.org.uk>
In-Reply-To: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
References: <160588455242.3465195.3214733858273019178.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [216.205.24.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kg8AT-00Adir-IT
Subject: [V9fs-developer] [RFC PATCH 68/76] netfs: Add write_begin helper
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

Add a helper to do the pre-reading work for the netfs write_begin address
space op.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/file.c                |    8 ++
 fs/netfs/internal.h          |    2 +
 fs/netfs/read_helper.c       |  168 ++++++++++++++++++++++++++++++++++++++++++
 fs/netfs/stats.c             |   10 ++-
 include/linux/netfs.h        |    8 ++
 include/trace/events/netfs.h |    4 +
 6 files changed, 196 insertions(+), 4 deletions(-)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 8772f5e1cbd3..84a222587ca3 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -353,6 +353,13 @@ static void afs_init_rreq(struct netfs_read_request *rreq, struct file *file)
 		rreq->cookie_debug_id = afs_vnode_cache(vnode)->debug_id;
 }
 
+static bool afs_is_cache_enabled(struct inode *inode)
+{
+	struct fscache_cookie *cookie = afs_vnode_cache(AFS_FS_I(inode));
+
+	return fscache_cookie_enabled(cookie) && !hlist_empty(&cookie->backing_objects);
+}
+
 static int afs_begin_cache_operation(struct netfs_read_request *rreq)
 {
 	struct afs_vnode *vnode = AFS_FS_I(rreq->inode);
@@ -368,6 +375,7 @@ static void afs_priv_cleanup(struct address_space *mapping, void *netfs_priv)
 
 static const struct netfs_read_request_ops afs_req_ops = {
 	.init_rreq		= afs_init_rreq,
+	.is_cache_enabled	= afs_is_cache_enabled,
 	.begin_cache_operation	= afs_begin_cache_operation,
 	.issue_op		= afs_req_issue_op,
 	.cleanup		= afs_priv_cleanup,
diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index d83317b1eb9d..3d7ab3ab5743 100644
--- a/fs/netfs/internal.h
+++ b/fs/netfs/internal.h
@@ -34,8 +34,10 @@ extern atomic_t netfs_n_rh_read_failed;
 extern atomic_t netfs_n_rh_zero;
 extern atomic_t netfs_n_rh_short_read;
 extern atomic_t netfs_n_rh_write;
+extern atomic_t netfs_n_rh_write_begin;
 extern atomic_t netfs_n_rh_write_done;
 extern atomic_t netfs_n_rh_write_failed;
+extern atomic_t netfs_n_rh_write_zskip;
 
 
 static inline void netfs_stat(atomic_t *stat)
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index e1ce197d8d18..3e59d7d2f77e 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -955,3 +955,171 @@ int netfs_readpage(struct file *file,
 	return ret;
 }
 EXPORT_SYMBOL(netfs_readpage);
+
+static void netfs_clear_thp(struct page *page)
+{
+	unsigned int i;
+
+	for (i = 0; i < thp_nr_pages(page); i++)
+		clear_highpage(page + i);
+}
+
+/**
+ * netfs_write_begin - Helper to prepare for writing
+ * @file: The file to read from
+ * @mapping: The mapping to read from
+ * @pos: File position at which the write will begin
+ * @len: The length of the write in this page
+ * @flags: AOP_* flags
+ * @_page: Where to put the resultant page
+ * @_fsdata: Place for the netfs to store a cookie
+ * @ops: The network filesystem's operations for the helper to use
+ * @netfs_priv: Private netfs data to be retained in the request
+ *
+ * Pre-read data for a write-begin request by drawing data from the cache if
+ * possible, or the netfs if not.  Space beyond the EOF is zero-filled.
+ * Multiple I/O requests from different sources will get munged together.  If
+ * necessary, the readahead window can be expanded in either direction to a
+ * more convenient alighment for RPC efficiency or to make storage in the cache
+ * feasible.
+ *
+ * The calling netfs must provide a table of operations, only one of which,
+ * issue_op, is mandatory.
+ *
+ * The check_write_begin() operation can be provided to check for and flush
+ * conflicting writes once the page is grabbed and locked.  It is passed a
+ * pointer to the fsdata cookie that gets returned to the VM to be passed to
+ * write_end.  It is permitted to sleep.  It should return 0 if the request
+ * should go ahead; unlock the page and return -EAGAIN to cause the page to be
+ * regot; or return an error.
+ *
+ * This is usable whether or not caching is enabled.
+ */
+int netfs_write_begin(struct file *file, struct address_space *mapping,
+		      loff_t pos, unsigned int len, unsigned int flags,
+		      struct page **_page, void **_fsdata,
+		      const struct netfs_read_request_ops *ops,
+		      void *netfs_priv)
+{
+	struct netfs_read_request *rreq;
+	struct page *page, *xpage;
+	struct inode *inode = file_inode(file);
+	unsigned int debug_index = 0;
+	pgoff_t index = pos >> PAGE_SHIFT;
+	int pos_in_page = pos & ~PAGE_MASK;
+	loff_t size;
+	int ret;
+
+	struct readahead_control ractl = {
+		.file		= file,
+		.mapping	= mapping,
+		._index		= index,
+		._nr_pages	= 0,
+	};
+
+retry:
+	page = grab_cache_page_write_begin(mapping, index, 0);
+	if (!page)
+		return -ENOMEM;
+
+	if (ops->check_write_begin) {
+		/* Allow the netfs (eg. ceph) to flush conflicts. */
+		ret = ops->check_write_begin(file, pos, len, page, _fsdata);
+		if (ret < 0) {
+			if (ret == -EAGAIN)
+				goto retry;
+			goto error;
+		}
+	}
+
+	if (PageUptodate(page))
+		goto have_page;
+
+	/* If the page is beyond the EOF, we want to clear it - unless it's
+	 * within the cache granule containing the EOF, in which case we need
+	 * to preload the granule.
+	 */
+	size = i_size_read(inode);
+	if (!ops->is_cache_enabled(inode) &&
+	    ((pos_in_page == 0 && len == thp_size(page)) ||
+	     (pos >= size) ||
+	     (pos_in_page == 0 && (pos + len) >= size))) {
+		netfs_clear_thp(page);
+		SetPageUptodate(page);
+		netfs_stat(&netfs_n_rh_write_zskip);
+		goto have_page_no_wait;
+	}
+
+	ret = -ENOMEM;
+	rreq = netfs_alloc_read_request(ops, netfs_priv, file);
+	if (!rreq)
+		goto error;
+	rreq->mapping		= page->mapping;
+	rreq->start		= page->index * PAGE_SIZE;
+	rreq->len		= thp_size(page);
+	rreq->no_unlock_page	= page->index;
+	__set_bit(NETFS_RREQ_NO_UNLOCK_PAGE, &rreq->flags);
+	netfs_priv = NULL;
+
+	netfs_stat(&netfs_n_rh_write_begin);
+	trace_netfs_read(rreq, pos, len, netfs_read_trace_write_begin);
+
+	if (ops->begin_cache_operation)
+		ops->begin_cache_operation(rreq);
+
+	/* Expand the request to meet caching requirements and download
+	 * preferences.
+	 */
+	ractl._nr_pages = thp_nr_pages(page);
+	netfs_rreq_expand(rreq, &ractl);
+	netfs_get_read_request(rreq);
+
+	/* We hold the page locks, so we can drop the references */
+	while ((xpage = readahead_page(&ractl)))
+		if (xpage != page)
+			put_page(xpage);
+
+	atomic_set(&rreq->nr_rd_ops, 1);
+	do {
+		if (!netfs_rreq_submit_slice(rreq, &debug_index))
+			break;
+
+	} while (rreq->submitted < rreq->len);
+
+	// TODO: If we didn't submit enough readage, we need to clean up
+
+	/* Keep nr_rd_ops incremented so that the ref always belongs to us, and
+	 * the service code isn't punted off to a random thread pool to
+	 * process.
+	 */
+	for (;;) {
+		wait_var_event(&rreq->nr_rd_ops, atomic_read(&rreq->nr_rd_ops) == 1);
+		netfs_rreq_assess(rreq);
+		if (!test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags))
+			break;
+		cond_resched();
+	}
+
+	ret = rreq->error;
+	netfs_put_read_request(rreq);
+	if (ret < 0)
+		goto error;
+
+have_page:
+	wait_on_page_fscache(page);
+have_page_no_wait:
+	if (netfs_priv)
+		ops->cleanup(netfs_priv, mapping);
+	*_page = page;
+	_leave(" = 0");
+	return 0;
+
+error:
+	unlock_page(page);
+	put_page(page);
+	if (netfs_priv)
+		ops->cleanup(netfs_priv, mapping);
+	_leave(" = %d", ret);
+	return ret;
+}
+EXPORT_SYMBOL(netfs_write_begin);
diff --git a/fs/netfs/stats.c b/fs/netfs/stats.c
index 3a7a3c10e1cd..cdd09e30ce75 100644
--- a/fs/netfs/stats.c
+++ b/fs/netfs/stats.c
@@ -23,19 +23,23 @@ atomic_t netfs_n_rh_read_failed;
 atomic_t netfs_n_rh_zero;
 atomic_t netfs_n_rh_short_read;
 atomic_t netfs_n_rh_write;
+atomic_t netfs_n_rh_write_begin;
 atomic_t netfs_n_rh_write_done;
 atomic_t netfs_n_rh_write_failed;
+atomic_t netfs_n_rh_write_zskip;
 
 void netfs_stats_show(struct seq_file *m)
 {
-	seq_printf(m, "RdHelp : RA=%u RP=%u rr=%u sr=%u\n",
+	seq_printf(m, "RdHelp : RA=%u RP=%u WB=%u rr=%u sr=%u\n",
 		   atomic_read(&netfs_n_rh_readahead),
 		   atomic_read(&netfs_n_rh_readpage),
+		   atomic_read(&netfs_n_rh_write_begin),
 		   atomic_read(&netfs_n_rh_rreq),
 		   atomic_read(&netfs_n_rh_sreq));
-	seq_printf(m, "RdHelp : ZR=%u sh=%u\n",
+	seq_printf(m, "RdHelp : ZR=%u sh=%u sk=%u\n",
 		   atomic_read(&netfs_n_rh_zero),
-		   atomic_read(&netfs_n_rh_short_read));
+		   atomic_read(&netfs_n_rh_short_read),
+		   atomic_read(&netfs_n_rh_write_zskip));
 	seq_printf(m, "RdHelp : DL=%u ds=%u df=%u di=%u\n",
 		   atomic_read(&netfs_n_rh_download),
 		   atomic_read(&netfs_n_rh_download_done),
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index d9cd9a1d1f6d..aced292b7e6d 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -78,12 +78,15 @@ struct netfs_read_request {
  * Operations the network filesystem can/must provide to the helpers.
  */
 struct netfs_read_request_ops {
+	bool (*is_cache_enabled)(struct inode *inode);
 	void (*init_rreq)(struct netfs_read_request *rreq, struct file *file);
 	int (*begin_cache_operation)(struct netfs_read_request *rreq);
 	void (*expand_readahead)(struct netfs_read_request *rreq);
 	bool (*clamp_length)(struct netfs_read_subrequest *subreq);
 	void (*issue_op)(struct netfs_read_subrequest *subreq);
 	bool (*is_still_valid)(struct netfs_read_request *rreq);
+	int (*check_write_begin)(struct file *file, loff_t pos, unsigned len,
+				 struct page *page, void **_fsdata);
 	void (*done)(struct netfs_read_request *rreq);
 	void (*cleanup)(struct address_space *mapping, void *netfs_priv);
 };
@@ -96,6 +99,11 @@ extern int netfs_readpage(struct file *,
 			  struct page *,
 			  const struct netfs_read_request_ops *,
 			  void *);
+extern int netfs_write_begin(struct file *, struct address_space *,
+			     loff_t, unsigned int, unsigned int, struct page **,
+			     void **,
+			     const struct netfs_read_request_ops *,
+			     void *);
 
 extern void netfs_subreq_terminated(struct netfs_read_subrequest *, ssize_t);
 extern void netfs_stats_show(struct seq_file *);
diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index 56a734a3fb0d..b199dbb59256 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -23,6 +23,7 @@ enum netfs_read_trace {
 	netfs_read_trace_expanded,
 	netfs_read_trace_readahead,
 	netfs_read_trace_readpage,
+	netfs_read_trace_write_begin,
 };
 
 enum netfs_rreq_trace {
@@ -51,7 +52,8 @@ enum netfs_sreq_trace {
 #define netfs_read_traces					\
 	EM(netfs_read_trace_expanded,		"EXPANDED ")	\
 	EM(netfs_read_trace_readahead,		"READAHEAD")	\
-	E_(netfs_read_trace_readpage,		"READPAGE ")
+	EM(netfs_read_trace_readpage,		"READPAGE ")	\
+	E_(netfs_read_trace_write_begin,	"WRITEBEGN")
 
 #define netfs_rreq_traces					\
 	EM(netfs_rreq_trace_assess,		"ASSESS")	\




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
