Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BD83585E5
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Apr 2021 16:07:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUVJQ-0005Zl-RK; Thu, 08 Apr 2021 14:07:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUVJO-0005ZW-RX
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UMZ0o32JRjPA3nHbwACMoQDGnycpvlExm9WR8F24WB0=; b=bubm360Pz5q2y8BkxdnBVwFUE0
 epRYlEPtWxxADn+kMjEQj9N68ktJEDDJh7r7yV8KUh/Cm4RUqSNWPdShBg2OxQj3Sh3eMkii7C9NG
 Pk4CCcU3byiSf+LWI+MMGj/lqPdEHi3NvGviBZX0IaJnPu9llRHrvulHAEW84D/bFb68=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UMZ0o32JRjPA3nHbwACMoQDGnycpvlExm9WR8F24WB0=; b=a1ONWtBjF89yAfBJFjO9dAN7+T
 l3OjURgqO8GAp6BfGveuLX2iBloIzQn+2/A0krLuJ5ZJc2Ie9qLmaGP3FK49thHKEONIiuRyYD0ig
 qUJ4W98h5xxckQ2DRMAbm00SJkigI9un8PaXZwTEGEd8vcWUFcRbGijjxO+OoUKT40jI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUVJD-004wem-JV
 for v9fs-developer@lists.sourceforge.net; Thu, 08 Apr 2021 14:07:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617890813;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UMZ0o32JRjPA3nHbwACMoQDGnycpvlExm9WR8F24WB0=;
 b=Fhw2jGCls8L6oUHmntpS1HBDOLOY8oPe2KmV7mqFKHTiz+0mNvpvXV01/lsMA9FzX8fdpl
 SwAhHzYjrC3eNEzY19DnENI3V/EAGy9Peo8QjdBlva5B5/FbTufU0QX0+b0U6uCCNOiRrY
 m0McI6CKST6o/PEegV2v5wnaCY3aF5g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-180-Hp7y2hrKOo2HT4mjk09OpA-1; Thu, 08 Apr 2021 10:06:51 -0400
X-MC-Unique: Hp7y2hrKOo2HT4mjk09OpA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 760AB807918;
 Thu,  8 Apr 2021 14:06:49 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 231CE5D747;
 Thu,  8 Apr 2021 14:06:45 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-fsdevel@vger.kernel.org
Date: Thu, 08 Apr 2021 15:06:45 +0100
Message-ID: <161789080530.6155.1011847312392330491.stgit@warthog.procyon.org.uk>
In-Reply-To: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
References: <161789062190.6155.12711584466338493050.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lUVJD-004wem-JV
Subject: [V9fs-developer] [PATCH v6 13/30] netfs: Add write_begin helper
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, Jeff Layton <jlayton@redhat.com>,
 Steve French <sfrench@samba.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>, dhowells@redhat.com,
 linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Add a helper to do the pre-reading work for the netfs write_begin address
space op.

Changes
v6:
- Fixed a missing rreq put in netfs_write_begin()[3].
- Use DEFINE_READAHEAD()[4].

v5:
- Made the wait for PG_fscache in netfs_write_begin() killable[2].

v4:
- Added flag to netfs_subreq_terminated() to indicate that the caller may
  have been running async and stuff that might sleep needs punting to a
  workqueue (can't use in_softirq()[1]).

Signed-off-by: David Howells <dhowells@redhat.com>
Reviewed-by: Jeff Layton <jlayton@redhat.com>
cc: Matthew Wilcox <willy@infradead.org>
cc: linux-mm@kvack.org
cc: linux-cachefs@redhat.com
cc: linux-afs@lists.infradead.org
cc: linux-nfs@vger.kernel.org
cc: linux-cifs@vger.kernel.org
cc: ceph-devel@vger.kernel.org
cc: v9fs-developer@lists.sourceforge.net
cc: linux-fsdevel@vger.kernel.org
Link: https://lore.kernel.org/r/20210216084230.GA23669@lst.de/ [1]
Link: https://lore.kernel.org/r/2499407.1616505440@warthog.procyon.org.uk/ [2]
Link: https://lore.kernel.org/r/161781042127.463527.9154479794406046987.stgit@warthog.procyon.org.uk/ [3]
Link: https://lore.kernel.org/r/1234933.1617886271@warthog.procyon.org.uk/ [4]
Link: https://lore.kernel.org/r/160588543960.3465195.2792938973035886168.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161118140165.1232039.16418853874312234477.stgit@warthog.procyon.org.uk/ # rfc
Link: https://lore.kernel.org/r/161161035539.2537118.15674887534950908530.stgit@warthog.procyon.org.uk/ # v2
Link: https://lore.kernel.org/r/161340398368.1303470.11242918276563276090.stgit@warthog.procyon.org.uk/ # v3
Link: https://lore.kernel.org/r/161539541541.286939.1889738674057013729.stgit@warthog.procyon.org.uk/ # v4
Link: https://lore.kernel.org/r/161653798616.2770958.17213315845968485563.stgit@warthog.procyon.org.uk/ # v5
---

 fs/netfs/internal.h          |    2 +
 fs/netfs/read_helper.c       |  164 ++++++++++++++++++++++++++++++++++++++++++
 fs/netfs/stats.c             |   11 ++-
 include/linux/netfs.h        |    8 ++
 include/trace/events/netfs.h |    4 +
 5 files changed, 185 insertions(+), 4 deletions(-)

diff --git a/fs/netfs/internal.h b/fs/netfs/internal.h
index 98b6f4516da1..b7f2c4459f33 100644
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
index 6d6ed30f417e..da34aedea053 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -772,3 +772,167 @@ int netfs_readpage(struct file *file,
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
+	DEFINE_READAHEAD(ractl, file, NULL, mapping, index);
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
+	/* Keep nr_rd_ops incremented so that the ref always belongs to us, and
+	 * the service code isn't punted off to a random thread pool to
+	 * process.
+	 */
+	for (;;) {
+		wait_var_event(&rreq->nr_rd_ops, atomic_read(&rreq->nr_rd_ops) == 1);
+		netfs_rreq_assess(rreq, false);
+		if (!test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags))
+			break;
+		cond_resched();
+	}
+
+	ret = rreq->error;
+	if (ret == 0 && rreq->submitted < rreq->len)
+		ret = -EIO;
+	netfs_put_read_request(rreq, false);
+	if (ret < 0)
+		goto error;
+
+have_page:
+	ret = wait_on_page_fscache_killable(page);
+	if (ret < 0)
+		goto error;
+have_page_no_wait:
+	if (netfs_priv)
+		ops->cleanup(netfs_priv, mapping);
+	*_page = page;
+	_leave(" = 0");
+	return 0;
+
+error_put:
+	netfs_put_read_request(rreq, false);
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
index df6ff5718f25..9ae538c85378 100644
--- a/fs/netfs/stats.c
+++ b/fs/netfs/stats.c
@@ -24,19 +24,24 @@ atomic_t netfs_n_rh_read_failed;
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
+	seq_printf(m, "RdHelp : RA=%u RP=%u WB=%u WBZ=%u rr=%u sr=%u\n",
 		   atomic_read(&netfs_n_rh_readahead),
 		   atomic_read(&netfs_n_rh_readpage),
+		   atomic_read(&netfs_n_rh_write_begin),
+		   atomic_read(&netfs_n_rh_write_zskip),
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
index db4af80cbae3..99659ed9524e 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -147,11 +147,14 @@ struct netfs_read_request {
  * Operations the network filesystem can/must provide to the helpers.
  */
 struct netfs_read_request_ops {
+	bool (*is_cache_enabled)(struct inode *inode);
 	void (*init_rreq)(struct netfs_read_request *rreq, struct file *file);
 	void (*expand_readahead)(struct netfs_read_request *rreq);
 	bool (*clamp_length)(struct netfs_read_subrequest *subreq);
 	void (*issue_op)(struct netfs_read_subrequest *subreq);
 	bool (*is_still_valid)(struct netfs_read_request *rreq);
+	int (*check_write_begin)(struct file *file, loff_t pos, unsigned len,
+				 struct page *page, void **_fsdata);
 	void (*done)(struct netfs_read_request *rreq);
 	void (*cleanup)(struct address_space *mapping, void *netfs_priv);
 };
@@ -164,6 +167,11 @@ extern int netfs_readpage(struct file *,
 			  struct page *,
 			  const struct netfs_read_request_ops *,
 			  void *);
+extern int netfs_write_begin(struct file *, struct address_space *,
+			     loff_t, unsigned int, unsigned int, struct page **,
+			     void **,
+			     const struct netfs_read_request_ops *,
+			     void *);
 
 extern void netfs_subreq_terminated(struct netfs_read_subrequest *, ssize_t, bool);
 extern void netfs_stats_show(struct seq_file *);
diff --git a/include/trace/events/netfs.h b/include/trace/events/netfs.h
index 12ad382764c5..a2bf6cd84bd4 100644
--- a/include/trace/events/netfs.h
+++ b/include/trace/events/netfs.h
@@ -22,6 +22,7 @@ enum netfs_read_trace {
 	netfs_read_trace_expanded,
 	netfs_read_trace_readahead,
 	netfs_read_trace_readpage,
+	netfs_read_trace_write_begin,
 };
 
 enum netfs_rreq_trace {
@@ -50,7 +51,8 @@ enum netfs_sreq_trace {
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
