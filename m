Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4593B52D5C3
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 May 2022 16:17:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nrgxe-0003Iy-Bb; Thu, 19 May 2022 14:17:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nrgxc-0003Is-RT
 for v9fs-developer@lists.sourceforge.net; Thu, 19 May 2022 14:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JpCP0RSVtJq6rGROzPGms9FT3iwkYecfevR3gkN8pi4=; b=EnCB83JsjI/Lt81HyHQKJ3bm0/
 GirX8jT/5ZO7SNo2rg56Q4ojhLD16wufIy/E2XOL8HtP0AL8a6bepF99/uUKCEiFNb3YoLR6Ci9Sh
 Q8bhBYCutmn3urPt2GtrZzbrja9IGJI2YlGCE44cx7Xy1hursd3An3iOrCxiCtv6sH+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Cc:To
 :From:Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=JpCP0RSVtJq6rGROzPGms9FT3iwkYecfevR3gkN8pi4=; b=L
 wesoMxOFc70ZiKf71AthFX51EC+f+X+4kyTDZ+5jZ+Per0x1uznKHkMtlYsJRtyET2mF3z+kujV86
 mAy5NRaVU95mEHm0c7O9Fo5OVdEIH7NxVpVmjF6LVgdhuEVSEUxQHEBKuU1mzHFizguNpoMwPjlXI
 LAh8xZNbMHsUahb8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nrgxU-009Stz-RE
 for v9fs-developer@lists.sourceforge.net; Thu, 19 May 2022 14:17:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1652969809;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=JpCP0RSVtJq6rGROzPGms9FT3iwkYecfevR3gkN8pi4=;
 b=SS0Ah441gXZbcyEitQJH7ErBKzDpcCQZw9tlhw5aXAbMcvTciQ787QlcegYBoN2/xQLuKK
 Mbhh4d48Vn9e5xNtOKRFXMYDeVwKm6/qbOeFLuM8b3C8f7qg9zdXJxCiX0JMgdDSWI1QPn
 VCKcGcBUYCGPTt9PE0QRz73wXd0FLCE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-398-cBcPIcFENd2a0CaArlWwTg-1; Thu, 19 May 2022 10:16:45 -0400
X-MC-Unique: cBcPIcFENd2a0CaArlWwTg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8B43B8D8B5D;
 Thu, 19 May 2022 14:16:44 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BA58640CF8ED;
 Thu, 19 May 2022 14:16:41 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: jlayton@kernel.org
Date: Thu, 19 May 2022 15:16:40 +0100
Message-ID: <165296980082.3595490.3561111064004493810.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: As the ->init() netfs op is now used to set up the netfslib
 I/O request rather than passing stuff in,
 thereby allowing the netfslib functions
 to be pointed at directly by the address_space_operations [...] 
 Content analysis details:   (-1.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nrgxU-009Stz-RE
Subject: [V9fs-developer] [PATCH 1/2] netfs: ->cleanup() op is always given
 a rreq pointer now
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
Cc: linux-cifs@vger.kernel.org, dhowells@redhat.com,
 Jeff Layton <jlayton@redhat.com>, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 Steve French <sfrench@samba.org>, linux-cachefs@redhat.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, David Wysochanski <dwysocha@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

As the ->init() netfs op is now used to set up the netfslib I/O request
rather than passing stuff in, thereby allowing the netfslib functions to be
pointed at directly by the address_space_operations struct, we're always
going to be able to pass an I/O request pointer to the cleanup function.

Therefore, change the ->cleanup() function to take a pointer to the I/O
request rather than taking a pointer to the network filesystem's
address_space and a piece of private data.

Also, rename ->cleanup() to ->free_request() to match the ->init_request()
function.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Jeff Layton <jlayton@kernel.org>
cc: Steve French <sfrench@samba.org>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: Jeff Layton <jlayton@redhat.com>
cc: David Wysochanski <dwysocha@redhat.com>
cc: Ilya Dryomov <idryomov@gmail.com>
cc: v9fs-developer@lists.sourceforge.net
cc: ceph-devel@vger.kernel.org
cc: linux-afs@lists.infradead.org
cc: linux-cifs@vger.kernel.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
---

 fs/9p/vfs_addr.c      |   11 +++++------
 fs/afs/file.c         |    6 +++---
 fs/ceph/addr.c        |    9 ++++-----
 fs/netfs/objects.c    |    8 +++++---
 include/linux/netfs.h |    4 +++-
 5 files changed, 20 insertions(+), 18 deletions(-)

diff --git a/fs/9p/vfs_addr.c b/fs/9p/vfs_addr.c
index 501128188343..002c482794dc 100644
--- a/fs/9p/vfs_addr.c
+++ b/fs/9p/vfs_addr.c
@@ -66,13 +66,12 @@ static int v9fs_init_request(struct netfs_io_request *rreq, struct file *file)
 }
 
 /**
- * v9fs_req_cleanup - Cleanup request initialized by v9fs_init_request
- * @mapping: unused mapping of request to cleanup
- * @priv: private data to cleanup, a fid, guaranted non-null.
+ * v9fs_free_request - Cleanup request initialized by v9fs_init_rreq
+ * @rreq: The I/O request to clean up
  */
-static void v9fs_req_cleanup(struct address_space *mapping, void *priv)
+static void v9fs_free_request(struct netfs_io_request *rreq)
 {
-	struct p9_fid *fid = priv;
+	struct p9_fid *fid = rreq->netfs_priv;
 
 	p9_client_clunk(fid);
 }
@@ -94,9 +93,9 @@ static int v9fs_begin_cache_operation(struct netfs_io_request *rreq)
 
 const struct netfs_request_ops v9fs_req_ops = {
 	.init_request		= v9fs_init_request,
+	.free_request		= v9fs_free_request,
 	.begin_cache_operation	= v9fs_begin_cache_operation,
 	.issue_read		= v9fs_issue_read,
-	.cleanup		= v9fs_req_cleanup,
 };
 
 /**
diff --git a/fs/afs/file.c b/fs/afs/file.c
index 26292a110a8f..b9ca72fbbcf9 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -383,17 +383,17 @@ static int afs_check_write_begin(struct file *file, loff_t pos, unsigned len,
 	return test_bit(AFS_VNODE_DELETED, &vnode->flags) ? -ESTALE : 0;
 }
 
-static void afs_priv_cleanup(struct address_space *mapping, void *netfs_priv)
+static void afs_free_request(struct netfs_io_request *rreq)
 {
-	key_put(netfs_priv);
+	key_put(rreq->netfs_priv);
 }
 
 const struct netfs_request_ops afs_req_ops = {
 	.init_request		= afs_init_request,
+	.free_request		= afs_free_request,
 	.begin_cache_operation	= afs_begin_cache_operation,
 	.check_write_begin	= afs_check_write_begin,
 	.issue_read		= afs_issue_read,
-	.cleanup		= afs_priv_cleanup,
 };
 
 int afs_write_inode(struct inode *inode, struct writeback_control *wbc)
diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
index b6edcf89a429..ee8c1b099c4f 100644
--- a/fs/ceph/addr.c
+++ b/fs/ceph/addr.c
@@ -392,11 +392,10 @@ static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
 	return 0;
 }
 
-static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
+static void ceph_netfs_free_request(struct netfs_io_request *rreq)
 {
-	struct inode *inode = mapping->host;
-	struct ceph_inode_info *ci = ceph_inode(inode);
-	int got = (uintptr_t)priv;
+	struct ceph_inode_info *ci = ceph_inode(rreq->inode);
+	int got = (uintptr_t)rreq->netfs_priv;
 
 	if (got)
 		ceph_put_cap_refs(ci, got);
@@ -404,12 +403,12 @@ static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
 
 const struct netfs_request_ops ceph_netfs_ops = {
 	.init_request		= ceph_init_request,
+	.free_request		= ceph_netfs_free_request,
 	.begin_cache_operation	= ceph_begin_cache_operation,
 	.issue_read		= ceph_netfs_issue_read,
 	.expand_readahead	= ceph_netfs_expand_readahead,
 	.clamp_length		= ceph_netfs_clamp_length,
 	.check_write_begin	= ceph_netfs_check_write_begin,
-	.cleanup		= ceph_readahead_cleanup,
 };
 
 #ifdef CONFIG_CEPH_FSCACHE
diff --git a/fs/netfs/objects.c b/fs/netfs/objects.c
index e86107b30ba4..d6b8c0cbeb7c 100644
--- a/fs/netfs/objects.c
+++ b/fs/netfs/objects.c
@@ -75,10 +75,10 @@ static void netfs_free_request(struct work_struct *work)
 	struct netfs_io_request *rreq =
 		container_of(work, struct netfs_io_request, work);
 
-	netfs_clear_subrequests(rreq, false);
-	if (rreq->netfs_priv)
-		rreq->netfs_ops->cleanup(rreq->mapping, rreq->netfs_priv);
 	trace_netfs_rreq(rreq, netfs_rreq_trace_free);
+	netfs_clear_subrequests(rreq, false);
+	if (rreq->netfs_ops->free_request)
+		rreq->netfs_ops->free_request(rreq);
 	if (rreq->cache_resources.ops)
 		rreq->cache_resources.ops->end_operation(&rreq->cache_resources);
 	kfree(rreq);
@@ -140,6 +140,8 @@ static void netfs_free_subrequest(struct netfs_io_subrequest *subreq,
 	struct netfs_io_request *rreq = subreq->rreq;
 
 	trace_netfs_sreq(subreq, netfs_sreq_trace_free);
+	if (rreq->netfs_ops->free_subrequest)
+		rreq->netfs_ops->free_subrequest(subreq);
 	kfree(subreq);
 	netfs_stat_d(&netfs_n_rh_sreq);
 	netfs_put_request(rreq, was_async, netfs_rreq_trace_put_subreq);
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index c7bf1eaf51d5..1970c21b4f80 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -204,7 +204,10 @@ struct netfs_io_request {
  */
 struct netfs_request_ops {
 	int (*init_request)(struct netfs_io_request *rreq, struct file *file);
+	void (*free_request)(struct netfs_io_request *rreq);
+	void (*free_subrequest)(struct netfs_io_subrequest *rreq);
 	int (*begin_cache_operation)(struct netfs_io_request *rreq);
+
 	void (*expand_readahead)(struct netfs_io_request *rreq);
 	bool (*clamp_length)(struct netfs_io_subrequest *subreq);
 	void (*issue_read)(struct netfs_io_subrequest *subreq);
@@ -212,7 +215,6 @@ struct netfs_request_ops {
 	int (*check_write_begin)(struct file *file, loff_t pos, unsigned len,
 				 struct folio *folio, void **_fsdata);
 	void (*done)(struct netfs_io_request *rreq);
-	void (*cleanup)(struct address_space *mapping, void *netfs_priv);
 };
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
