Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD9431BE88
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Feb 2021 17:14:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBgVk-0002te-7w; Mon, 15 Feb 2021 16:14:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lBg9Z-00022s-VH
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i23Y6XBbqwJr+Ohumn3S8L8ookBPJg2JgRa5YCIVlco=; b=BV3SHDZBfOiS04aeNpJ9ogFkCJ
 XZZ8quLExM7KvEh+IgM/wngr30mvLNmRUaWoTgzFvZWrVZSTfTryhZBtxsCGduTFr3xbav+7iXuvU
 VWIRehOuukiPIYa7snM397HnCCamqYVtM2txNVIcvxXGL2X2SFa7i9t15cX+KDY9ighg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i23Y6XBbqwJr+Ohumn3S8L8ookBPJg2JgRa5YCIVlco=; b=T8JtyqTrzWpf1y2tp0fe+/MEHz
 LVRSbHaEoljM83lfw0fL8J1RB4i1yhrDwDZw9mWy3WoojiNR5PVHbI4wqQosY7dE9+k14EmlaXhWw
 7PcLZ0ZuVR2ShJ0NbU+pedrP1smD7mkwevnu1msiRZLlpJ216ASQ+HlHw9KJAEEUai1U=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lBg9I-0006gj-A3
 for v9fs-developer@lists.sourceforge.net; Mon, 15 Feb 2021 15:51:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613404250;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i23Y6XBbqwJr+Ohumn3S8L8ookBPJg2JgRa5YCIVlco=;
 b=cy9wx0K+VCjENfYoRJP8rBpozZKhhcwM9tGtX3GfCXeaYe7Z7aFy9XmSpoisaRvGCZYAP3
 yPhlhtxoeWvDzoHMxhgVPNQKQTZ0PmpYmrd6ihQdte+/sbYPMJLHKxClldc+i7AWvpDtQq
 PlIWGR/VWRqB5eULOB1JusFsm6MEFRU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-202-n89a_FXhMS6-glZrfdazRg-1; Mon, 15 Feb 2021 10:50:46 -0500
X-MC-Unique: n89a_FXhMS6-glZrfdazRg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A2F080196C;
 Mon, 15 Feb 2021 15:50:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-68.rdu2.redhat.com
 [10.10.119.68])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8105F19D9F;
 Mon, 15 Feb 2021 15:50:37 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Mon, 15 Feb 2021 15:50:36 +0000
Message-ID: <161340423660.1303470.13303522357511686909.stgit@warthog.procyon.org.uk>
In-Reply-To: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lBg9I-0006gj-A3
Subject: [V9fs-developer] [PATCH 31/33] ceph: convert readpage to fscache
 read helper
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
 Jeff Layton <jlayton@redhat.com>, David Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, dhowells@redhat.com,
 linux-cachefs@redhat.com, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: Jeff Layton <jlayton@kernel.org>

Have the ceph KConfig select NETFS_SUPPORT. Add a new netfs ops
structure and the operations for it. Convert ceph_readpage to use
the new netfs_readpage helper.

Signed-off-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: ceph-devel@vger.kernel.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
---

 fs/ceph/Kconfig |    1 
 fs/ceph/addr.c  |  149 +++++++++++++++++++++++++++++++++++++++++++++++++++----
 fs/ceph/cache.h |   36 +++++++++++++
 3 files changed, 176 insertions(+), 10 deletions(-)

diff --git a/fs/ceph/Kconfig b/fs/ceph/Kconfig
index 471e40156065..94df854147d3 100644
--- a/fs/ceph/Kconfig
+++ b/fs/ceph/Kconfig
@@ -6,6 +6,7 @@ config CEPH_FS
 	select LIBCRC32C
 	select CRYPTO_AES
 	select CRYPTO
+	select NETFS_SUPPORT
 	default n
 	help
 	  Choose Y or M here to include support for mounting the
diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
index fbfa49db06fd..95f39ff9bb24 100644
--- a/fs/ceph/addr.c
+++ b/fs/ceph/addr.c
@@ -12,6 +12,7 @@
 #include <linux/signal.h>
 #include <linux/iversion.h>
 #include <linux/ktime.h>
+#include <linux/netfs.h>
 
 #include "super.h"
 #include "mds_client.h"
@@ -183,6 +184,144 @@ static int ceph_releasepage(struct page *page, gfp_t gfp_flags)
 	return !PagePrivate(page);
 }
 
+static bool ceph_netfs_clamp_length(struct netfs_read_subrequest *subreq)
+{
+	struct inode *inode = subreq->rreq->mapping->host;
+	struct ceph_inode_info *ci = ceph_inode(inode);
+	u64 objno, objoff;
+	u32 xlen;
+
+	/* Truncate the extent at the end of the current object */
+	ceph_calc_file_object_mapping(&ci->i_layout, subreq->start, subreq->len,
+				      &objno, &objoff, &xlen);
+	subreq->len = xlen;
+	return true;
+}
+
+static void finish_netfs_read(struct ceph_osd_request *req)
+{
+	struct ceph_fs_client *fsc = ceph_inode_to_client(req->r_inode);
+	struct ceph_osd_data *osd_data = osd_req_op_extent_osd_data(req, 0);
+	struct netfs_read_subrequest *subreq = req->r_priv;
+	int num_pages;
+	int err = req->r_result;
+
+	ceph_update_read_latency(&fsc->mdsc->metric, req->r_start_latency,
+				 req->r_end_latency, err);
+
+	dout("%s: result %d subreq->len=%zu i_size=%lld\n", __func__, req->r_result,
+	     subreq->len, i_size_read(req->r_inode));
+
+	/* no object means success but no data */
+	if (err == -ENOENT)
+		err = 0;
+	else if (err == -EBLOCKLISTED)
+		fsc->blocklisted = true;
+
+	if (err >= 0 && err < subreq->len)
+		__set_bit(NETFS_SREQ_CLEAR_TAIL, &subreq->flags);
+
+	netfs_subreq_terminated(subreq, err);
+
+	num_pages = calc_pages_for(osd_data->alignment, osd_data->length);
+	ceph_put_page_vector(osd_data->pages, num_pages, false);
+	iput(req->r_inode);
+}
+
+static void ceph_netfs_issue_op(struct netfs_read_subrequest *subreq)
+{
+	struct netfs_read_request *rreq = subreq->rreq;
+	struct inode *inode = rreq->mapping->host;
+	struct ceph_inode_info *ci = ceph_inode(inode);
+	struct ceph_fs_client *fsc = ceph_inode_to_client(inode);
+	struct ceph_osd_request *req;
+	struct ceph_vino vino = ceph_vino(inode);
+	struct iov_iter iter;
+	struct page **pages;
+	size_t page_off;
+	int err = 0;
+	u64 len = subreq->len;
+
+	req = ceph_osdc_new_request(&fsc->client->osdc, &ci->i_layout, vino, subreq->start, &len,
+			0, 1, CEPH_OSD_OP_READ,
+			CEPH_OSD_FLAG_READ | fsc->client->osdc.client->options->read_from_replica,
+			NULL, ci->i_truncate_seq, ci->i_truncate_size, false);
+	if (IS_ERR(req)) {
+		err = PTR_ERR(req);
+		req = NULL;
+		goto out;
+	}
+
+	dout("%s: pos=%llu orig_len=%zu len=%llu\n", __func__, subreq->start, subreq->len, len);
+	iov_iter_xarray(&iter, READ, &rreq->mapping->i_pages, subreq->start, len);
+	err = iov_iter_get_pages_alloc(&iter, &pages, len, &page_off);
+	if (err < 0) {
+		dout("%s: iov_ter_get_pages_alloc returned %d\n", __func__, err);
+		goto out;
+	}
+
+	/* should always give us a page-aligned read */
+	WARN_ON_ONCE(page_off);
+	len = err;
+
+	osd_req_op_extent_osd_data_pages(req, 0, pages, len, 0, false, false);
+	req->r_callback = finish_netfs_read;
+	req->r_priv = subreq;
+	req->r_inode = inode;
+	ihold(inode);
+
+	err = ceph_osdc_start_request(req->r_osdc, req, false);
+	if (err)
+		iput(inode);
+out:
+	ceph_osdc_put_request(req);
+	if (err)
+		netfs_subreq_terminated(subreq, err);
+	dout("%s: result %d\n", __func__, err);
+}
+
+static void ceph_init_rreq(struct netfs_read_request *rreq, struct file *file)
+{
+}
+
+const struct netfs_read_request_ops ceph_readpage_netfs_ops = {
+	.init_rreq		= ceph_init_rreq,
+	.is_cache_enabled	= ceph_is_cache_enabled,
+	.begin_cache_operation	= ceph_begin_cache_operation,
+	.issue_op		= ceph_netfs_issue_op,
+	.clamp_length		= ceph_netfs_clamp_length,
+};
+
+/* read a single page, without unlocking it. */
+static int ceph_readpage(struct file *file, struct page *page)
+{
+	struct inode *inode = file_inode(file);
+	struct ceph_inode_info *ci = ceph_inode(inode);
+	struct ceph_vino vino = ceph_vino(inode);
+	u64 off = page_offset(page);
+	u64 len = PAGE_SIZE;
+
+	if (ci->i_inline_version != CEPH_INLINE_NONE) {
+		/*
+		 * Uptodate inline data should have been added
+		 * into page cache while getting Fcr caps.
+		 */
+		if (off == 0) {
+			unlock_page(page);
+			return -EINVAL;
+		}
+		zero_user_segment(page, 0, PAGE_SIZE);
+		SetPageUptodate(page);
+		unlock_page(page);
+		return 0;
+	}
+
+	dout("readpage ino %llx.%llx file %p off %llu len %llu page %p index %lu\n",
+	     vino.ino, vino.snap, file, off, len, page, page->index);
+
+	return netfs_readpage(file, page, &ceph_readpage_netfs_ops, NULL);
+}
+
 /* read a single page, without unlocking it. */
 static int ceph_do_readpage(struct file *filp, struct page *page)
 {
@@ -253,16 +392,6 @@ static int ceph_do_readpage(struct file *filp, struct page *page)
 	return err < 0 ? err : 0;
 }
 
-static int ceph_readpage(struct file *filp, struct page *page)
-{
-	int r = ceph_do_readpage(filp, page);
-	if (r != -EINPROGRESS)
-		unlock_page(page);
-	else
-		r = 0;
-	return r;
-}
-
 /*
  * Finish an async read(ahead) op.
  */
diff --git a/fs/ceph/cache.h b/fs/ceph/cache.h
index 10c21317b62f..1409d6149281 100644
--- a/fs/ceph/cache.h
+++ b/fs/ceph/cache.h
@@ -9,6 +9,8 @@
 #ifndef _CEPH_CACHE_H
 #define _CEPH_CACHE_H
 
+#include <linux/netfs.h>
+
 #ifdef CONFIG_CEPH_FSCACHE
 
 extern struct fscache_netfs ceph_cache_netfs;
@@ -35,11 +37,31 @@ static inline void ceph_fscache_inode_init(struct ceph_inode_info *ci)
 	ci->fscache = NULL;
 }
 
+static inline struct fscache_cookie *ceph_fscache_cookie(struct ceph_inode_info *ci)
+{
+	return ci->fscache;
+}
+
 static inline void ceph_fscache_invalidate(struct inode *inode)
 {
 	fscache_invalidate(ceph_inode(inode)->fscache);
 }
 
+static inline bool ceph_is_cache_enabled(struct inode *inode)
+{
+	struct fscache_cookie *cookie = ceph_fscache_cookie(ceph_inode(inode));
+
+	if (!cookie)
+		return false;
+	return fscache_cookie_enabled(cookie);
+}
+
+static inline int ceph_begin_cache_operation(struct netfs_read_request *rreq)
+{
+	struct fscache_cookie *cookie = ceph_fscache_cookie(ceph_inode(rreq->inode));
+
+	return fscache_begin_read_operation(rreq, cookie);
+}
 #else
 
 static inline int ceph_fscache_register(void)
@@ -65,6 +87,11 @@ static inline void ceph_fscache_inode_init(struct ceph_inode_info *ci)
 {
 }
 
+static inline struct fscache_cookie *ceph_fscache_cookie(struct ceph_inode_info *ci)
+{
+	return NULL;
+}
+
 static inline void ceph_fscache_register_inode_cookie(struct inode *inode)
 {
 }
@@ -82,6 +109,15 @@ static inline void ceph_fscache_invalidate(struct inode *inode)
 {
 }
 
+static inline bool ceph_is_cache_enabled(struct inode *inode)
+{
+	return false;
+}
+
+static inline int ceph_begin_cache_operation(struct netfs_read_request *rreq)
+{
+	return -ENOBUFS;
+}
 #endif
 
 #endif /* _CEPH_CACHE_H */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
