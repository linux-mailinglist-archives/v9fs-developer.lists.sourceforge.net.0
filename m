Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF10766D2AE
	for <lists+v9fs-developer@lfdr.de>; Tue, 17 Jan 2023 00:10:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pHYcw-00018G-0t;
	Mon, 16 Jan 2023 23:10:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dhowells@redhat.com>) id 1pHYcu-000185-4W
 for v9fs-developer@lists.sourceforge.net;
 Mon, 16 Jan 2023 23:10:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ca3YM5+ZDMsvf+3X9heZWXQBMUIpoxlz5ebJhHm9RTk=; b=EKpI28WjIsPvFcoyNfMECspLLu
 1AhW9ewB9dB4b+g29k/r+rjE/r/BbCHpfKgQawev8LGSmRulu2kwTeT0Z+z2BT0CjOf35K0JHPDAj
 rRCUmgcBYna0J+LcpIWee0DFDB4uaLibmJR+dpOlknpNaUBCtEZyPk41oI9Kx7qYtzz4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ca3YM5+ZDMsvf+3X9heZWXQBMUIpoxlz5ebJhHm9RTk=; b=RW7+lqKiofjfoRyfjar4um6hcP
 aEy2z7hKHPk1JWrn4ddJ66LIooCe7IpdMLP6WDo0wRVS6TQtMbog/crec1uXSkY62rRbfinEvs+Ms
 bSfzIRZzTBB5LeU9dbAMb1MC3bXTRl/yr72HGh4cU7KyoMPfphlYltcX8iJw70Tnnh/0=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pHYcp-0007Np-59 for v9fs-developer@lists.sourceforge.net;
 Mon, 16 Jan 2023 23:10:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673910640;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Ca3YM5+ZDMsvf+3X9heZWXQBMUIpoxlz5ebJhHm9RTk=;
 b=DoaMkf8TPejz9BWZD02+pGjpzUl2+GAk89PFFSgR32ND+fflDUMEbGrY48KL+ZFhXOeuHQ
 TgEBencnE5ntqOsww0MpTDMN69Amseb1QW535zFO9v+s7qJ5M45lKjq5eZpXFRJC5dXuVT
 RK4SOKwmL/hFt7g1jyeU1nOuQDS6WNE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-474-t5zTBbIRNZmpiJVxDWfEjg-1; Mon, 16 Jan 2023 18:10:35 -0500
X-MC-Unique: t5zTBbIRNZmpiJVxDWfEjg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
 [10.11.54.3])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9D3F3C0F42B;
 Mon, 16 Jan 2023 23:10:34 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EE0491121315;
 Mon, 16 Jan 2023 23:10:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Date: Mon, 16 Jan 2023 23:10:32 +0000
Message-ID: <167391063242.2311931.3275290816918213423.stgit@warthog.procyon.org.uk>
In-Reply-To: <167391047703.2311931.8115712773222260073.stgit@warthog.procyon.org.uk>
References: <167391047703.2311931.8115712773222260073.stgit@warthog.procyon.org.uk>
User-Agent: StGit/1.5
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Convert the 9p filesystem to use iov_iter_extract_pages()
 instead of iov_iter_get_pages(). This will pin pages or leave them unaltered
 rather than getting a ref on them as appropriate to the iterator. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pHYcp-0007Np-59
Subject: [V9fs-developer] [PATCH v6 21/34] 9p: Pin pages rather than ref'ing
 if appropriate
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christoph Hellwig <hch@infradead.org>,
 Jan Kara <jack@suse.cz>, Eric Van Hensbergen <ericvh@gmail.com>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, dhowells@redhat.com,
 linux-block@vger.kernel.org, Jens Axboe <axboe@kernel.dk>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Convert the 9p filesystem to use iov_iter_extract_pages() instead of
iov_iter_get_pages().  This will pin pages or leave them unaltered rather
than getting a ref on them as appropriate to the iterator.

The pages need to be pinned for DIO-read rather than having refs taken on
them to prevent VM copy-on-write from malfunctioning during a concurrent
fork() (the result of the I/O would otherwise end up only visible to the
child process and not the parent).

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: Eric Van Hensbergen <ericvh@gmail.com>
cc: Latchesar Ionkov <lucho@ionkov.net>
cc: Christian Schoenebeck <linux_oss@crudebyte.com>
cc: v9fs-developer@lists.sourceforge.net
---

 net/9p/trans_common.c |    6 ++-
 net/9p/trans_common.h |    3 +-
 net/9p/trans_virtio.c |   89 ++++++++++++++-----------------------------------
 3 files changed, 31 insertions(+), 67 deletions(-)

diff --git a/net/9p/trans_common.c b/net/9p/trans_common.c
index c827f694551c..31d133412677 100644
--- a/net/9p/trans_common.c
+++ b/net/9p/trans_common.c
@@ -12,13 +12,15 @@
  * p9_release_pages - Release pages after the transaction.
  * @pages: array of pages to be put
  * @nr_pages: size of array
+ * @cleanup_mode: How to clean up the pages.
  */
-void p9_release_pages(struct page **pages, int nr_pages)
+void p9_release_pages(struct page **pages, int nr_pages,
+		      unsigned int cleanup_mode)
 {
 	int i;
 
 	for (i = 0; i < nr_pages; i++)
 		if (pages[i])
-			put_page(pages[i]);
+			page_put_unpin(pages[i], cleanup_mode);
 }
 EXPORT_SYMBOL(p9_release_pages);
diff --git a/net/9p/trans_common.h b/net/9p/trans_common.h
index 32134db6abf3..9b20eb4f2359 100644
--- a/net/9p/trans_common.h
+++ b/net/9p/trans_common.h
@@ -4,4 +4,5 @@
  * Author Venkateswararao Jujjuri <jvrao@linux.vnet.ibm.com>
  */
 
-void p9_release_pages(struct page **pages, int nr_pages);
+void p9_release_pages(struct page **pages, int nr_pages,
+		      unsigned int cleanup_mode);
diff --git a/net/9p/trans_virtio.c b/net/9p/trans_virtio.c
index eb28b54fe5f6..561f7cbd79da 100644
--- a/net/9p/trans_virtio.c
+++ b/net/9p/trans_virtio.c
@@ -310,73 +310,34 @@ static int p9_get_mapped_pages(struct virtio_chan *chan,
 			       struct iov_iter *data,
 			       int count,
 			       size_t *offs,
-			       int *need_drop,
+			       int *cleanup_mode,
 			       unsigned int gup_flags)
 {
 	int nr_pages;
 	int err;
+	int n;
 
 	if (!iov_iter_count(data))
 		return 0;
 
-	if (!iov_iter_is_kvec(data)) {
-		int n;
-		/*
-		 * We allow only p9_max_pages pinned. We wait for the
-		 * Other zc request to finish here
-		 */
-		if (atomic_read(&vp_pinned) >= chan->p9_max_pages) {
-			err = wait_event_killable(vp_wq,
-			      (atomic_read(&vp_pinned) < chan->p9_max_pages));
-			if (err == -ERESTARTSYS)
-				return err;
-		}
-		n = iov_iter_get_pages_alloc(data, pages, count, offs,
-					     gup_flags);
-		if (n < 0)
-			return n;
-		*need_drop = 1;
-		nr_pages = DIV_ROUND_UP(n + *offs, PAGE_SIZE);
-		atomic_add(nr_pages, &vp_pinned);
-		return n;
-	} else {
-		/* kernel buffer, no need to pin pages */
-		int index;
-		size_t len;
-		void *p;
-
-		/* we'd already checked that it's non-empty */
-		while (1) {
-			len = iov_iter_single_seg_count(data);
-			if (likely(len)) {
-				p = data->kvec->iov_base + data->iov_offset;
-				break;
-			}
-			iov_iter_advance(data, 0);
-		}
-		if (len > count)
-			len = count;
-
-		nr_pages = DIV_ROUND_UP((unsigned long)p + len, PAGE_SIZE) -
-			   (unsigned long)p / PAGE_SIZE;
-
-		*pages = kmalloc_array(nr_pages, sizeof(struct page *),
-				       GFP_NOFS);
-		if (!*pages)
-			return -ENOMEM;
-
-		*need_drop = 0;
-		p -= (*offs = offset_in_page(p));
-		for (index = 0; index < nr_pages; index++) {
-			if (is_vmalloc_addr(p))
-				(*pages)[index] = vmalloc_to_page(p);
-			else
-				(*pages)[index] = kmap_to_page(p);
-			p += PAGE_SIZE;
-		}
-		iov_iter_advance(data, len);
-		return len;
+	/*
+	 * We allow only p9_max_pages pinned. We wait for the
+	 * Other zc request to finish here
+	 */
+	if (atomic_read(&vp_pinned) >= chan->p9_max_pages) {
+		err = wait_event_killable(vp_wq,
+					  (atomic_read(&vp_pinned) < chan->p9_max_pages));
+		if (err == -ERESTARTSYS)
+			return err;
 	}
+
+	n = iov_iter_extract_pages(data, pages, count, offs, gup_flags);
+	if (n < 0)
+		return n;
+	*cleanup_mode = iov_iter_extract_mode(data, gup_flags);
+	nr_pages = DIV_ROUND_UP(n + *offs, PAGE_SIZE);
+	atomic_add(nr_pages, &vp_pinned);
+	return n;
 }
 
 static void handle_rerror(struct p9_req_t *req, int in_hdr_len,
@@ -431,7 +392,7 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	struct virtio_chan *chan = client->trans;
 	struct scatterlist *sgs[4];
 	size_t offs;
-	int need_drop = 0;
+	int cleanup_mode = 0;
 	int kicked = 0;
 
 	p9_debug(P9_DEBUG_TRANS, "virtio request\n");
@@ -439,7 +400,7 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	if (uodata) {
 		__le32 sz;
 		int n = p9_get_mapped_pages(chan, &out_pages, uodata,
-					    outlen, &offs, &need_drop,
+					    outlen, &offs, &cleanup_mode,
 					    FOLL_DEST_BUF);
 		if (n < 0) {
 			err = n;
@@ -459,7 +420,7 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 		memcpy(&req->tc.sdata[0], &sz, sizeof(sz));
 	} else if (uidata) {
 		int n = p9_get_mapped_pages(chan, &in_pages, uidata,
-					    inlen, &offs, &need_drop,
+					    inlen, &offs, &cleanup_mode,
 					    FOLL_SOURCE_BUF);
 		if (n < 0) {
 			err = n;
@@ -546,14 +507,14 @@ p9_virtio_zc_request(struct p9_client *client, struct p9_req_t *req,
 	 * Non kernel buffers are pinned, unpin them
 	 */
 err_out:
-	if (need_drop) {
+	if (cleanup_mode) {
 		if (in_pages) {
 			p9_release_pages(in_pages, in_nr_pages);
-			atomic_sub(in_nr_pages, &vp_pinned);
+			atomic_sub(in_nr_pages, &vp_pinned, cleanup_mode);
 		}
 		if (out_pages) {
 			p9_release_pages(out_pages, out_nr_pages);
-			atomic_sub(out_nr_pages, &vp_pinned);
+			atomic_sub(out_nr_pages, &vp_pinned, cleanup_mode);
 		}
 		/* wakeup anybody waiting for slots to pin pages */
 		wake_up(&vp_wq);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
