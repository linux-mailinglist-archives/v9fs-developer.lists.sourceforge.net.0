Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D77214D6298
	for <lists+v9fs-developer@lfdr.de>; Fri, 11 Mar 2022 14:50:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nSfel-0003QH-1L; Fri, 11 Mar 2022 13:50:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1nSfej-0003Q2-Sn
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Mar 2022 13:50:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nkVV5Z2jvGzdxq9DT6Fv6Bpxc803c9THPKkducVZxOM=; b=TMw3bSvYivzjC9deKYJZyz7TJj
 LYRUWSia8FWGG3s5hUK/24ltWES0bsn6UB9AP/X61BORQlWS3dfPsNMOJrwMstKMENZAe4/yBQ5xM
 MXBxFFLF8TtcGRJg0WpbmdThNK1P3A+pKIsdyCrXIv1pBBEYS0QtLB5sQmBwuGuF2fWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nkVV5Z2jvGzdxq9DT6Fv6Bpxc803c9THPKkducVZxOM=; b=a98H+RoiQlQxnBPv52g5eSGOy1
 NRGuEUi6df9nd8oNWGkWqT59b0KKLCyKkH8TphBudfhkpPVN/Tgu9IzoCUc4hvpkUyRm6BiIyvF76
 7ElLpxBUoQ660+4FJDbtFxAzgyPWTjBRm6RBQzp+6fm5pUBqWnCVjcbytcvrO8S5ZUzs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nSfeb-00CA0a-Ky
 for v9fs-developer@lists.sourceforge.net; Fri, 11 Mar 2022 13:50:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1647006595;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nkVV5Z2jvGzdxq9DT6Fv6Bpxc803c9THPKkducVZxOM=;
 b=EgRt1am1GnyZBTRsNtMFICCrRB9AdrS43rIUUxp96Bd4h/ez0PUdwl9faY+82Aw+Qb+zgx
 tpjCxMFFbwo87La/plI/b6u80OsCoFzv8wCGKvPaMjhUcIyP5f2+yS1wz2NWNCHZXao2xM
 5st9lJdLuAb6e6KTXIzpRARwboKBVlo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-145-TueK1vdeMAWKJda3GjGIzA-1; Fri, 11 Mar 2022 08:49:50 -0500
X-MC-Unique: TueK1vdeMAWKJda3GjGIzA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 251001091DA1;
 Fri, 11 Mar 2022 13:49:48 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 72A0483591;
 Fri, 11 Mar 2022 13:49:35 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <dd054c962818716e718bd9b446ee5322ca097675.camel@redhat.com>
References: <dd054c962818716e718bd9b446ee5322ca097675.camel@redhat.com>
 <164692883658.2099075.5745824552116419504.stgit@warthog.procyon.org.uk>
 <164692907694.2099075.10081819855690054094.stgit@warthog.procyon.org.uk>
To: Jeff Layton <jlayton@redhat.com>
MIME-Version: 1.0
Content-ID: <2533820.1647006574.1@warthog.procyon.org.uk>
Date: Fri, 11 Mar 2022 13:49:34 +0000
Message-ID: <2533821.1647006574@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Jeff Layton <jlayton@redhat.com> wrote: > > +static int
 ceph_init_request(struct
 netfs_io_request *rreq, struct file *file) > > +{ > > + struct inode *inode
 = rreq->inode; > > + int got = 0, want = CEPH_CAP_FILE_CACHE; > > + int ret
 = 0; > [...] 
 Content analysis details:   (-0.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nSfeb-00CA0a-Ky
Subject: Re: [V9fs-developer] [PATCH v3 12/20] ceph: Make
 ceph_init_request() check caps on readahead
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-afs@lists.infradead.org,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org, linux-cachefs@redhat.com,
 Jeffle Xu <jefflexu@linux.alibaba.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jeff Layton <jlayton@redhat.com> wrote:

> > +static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
> > +{
> > +	struct inode *inode = rreq->inode;
> > +	int got = 0, want = CEPH_CAP_FILE_CACHE;
> > +	int ret = 0;
> > +
> > +	if (file) {
> > +		struct ceph_rw_context *rw_ctx;
> > +		struct ceph_file_info *fi = file->private_data;
> > +
> > +		rw_ctx = ceph_find_rw_context(fi);
> > +		if (rw_ctx)
> > +			return 0;
> > +	}
> > +
> > +	if (rreq->origin != NETFS_READAHEAD)
> > +		return 0;
> > +
> 
> ^^^
> I think you should move this check above the if (file) block above it.
> We don't need to anything at all if we're not in readahead.

How about the attached, then?

David
---
commit 7082946186fc26016b15bc9039bd6d92ae732ef3
Author: David Howells <dhowells@redhat.com>
Date:   Wed Mar 9 21:45:22 2022 +0000

    ceph: Make ceph_init_request() check caps on readahead
    
    Move the caps check from ceph_readahead() to ceph_init_request(),
    conditional on the origin being NETFS_READAHEAD so that in a future patch,
    ceph can point its ->readahead() vector directly at netfs_readahead().
    
    Changes
    =======
    ver #4)
     - Move the check for NETFS_READAHEAD up in ceph_init_request()[2].
    
    ver #3)
     - Split from the patch to add a netfs inode context[1].
     - Need to store the caps got in rreq->netfs_priv for later freeing.
    
    Signed-off-by: David Howells <dhowells@redhat.com>
    cc: ceph-devel@vger.kernel.org
    cc: linux-cachefs@redhat.com
    Link: https://lore.kernel.org/r/8af0d47f17d89c06bbf602496dd845f2b0bf25b3.camel@kernel.org/ [1]
    Link: https://lore.kernel.org/r/dd054c962818716e718bd9b446ee5322ca097675.camel@redhat.com/ [2]

diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
index 9189257476f8..4aeccafa5dda 100644
--- a/fs/ceph/addr.c
+++ b/fs/ceph/addr.c
@@ -354,6 +354,45 @@ static void ceph_netfs_issue_read(struct netfs_io_subrequest *subreq)
 	dout("%s: result %d\n", __func__, err);
 }
 
+static int ceph_init_request(struct netfs_io_request *rreq, struct file *file)
+{
+	struct inode *inode = rreq->inode;
+	int got = 0, want = CEPH_CAP_FILE_CACHE;
+	int ret = 0;
+
+	if (rreq->origin != NETFS_READAHEAD)
+		return 0;
+
+	if (file) {
+		struct ceph_rw_context *rw_ctx;
+		struct ceph_file_info *fi = file->private_data;
+
+		rw_ctx = ceph_find_rw_context(fi);
+		if (rw_ctx)
+			return 0;
+	}
+
+	/*
+	 * readahead callers do not necessarily hold Fcb caps
+	 * (e.g. fadvise, madvise).
+	 */
+	ret = ceph_try_get_caps(inode, CEPH_CAP_FILE_RD, want, true, &got);
+	if (ret < 0) {
+		dout("start_read %p, error getting cap\n", inode);
+		return ret;
+	}
+
+	if (!(got & want)) {
+		dout("start_read %p, no cache cap\n", inode);
+		return -EACCES;
+	}
+	if (ret == 0)
+		return -EACCES;
+
+	rreq->netfs_priv = (void *)(uintptr_t)got;
+	return 0;
+}
+
 static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
 {
 	struct inode *inode = mapping->host;
@@ -365,7 +404,7 @@ static void ceph_readahead_cleanup(struct address_space *mapping, void *priv)
 }
 
 static const struct netfs_request_ops ceph_netfs_read_ops = {
-	.is_cache_enabled	= ceph_is_cache_enabled,
+	.init_request		= ceph_init_request,
 	.begin_cache_operation	= ceph_begin_cache_operation,
 	.issue_read		= ceph_netfs_issue_read,
 	.expand_readahead	= ceph_netfs_expand_readahead,
@@ -393,33 +432,7 @@ static int ceph_readpage(struct file *file, struct page *subpage)
 
 static void ceph_readahead(struct readahead_control *ractl)
 {
-	struct inode *inode = file_inode(ractl->file);
-	struct ceph_file_info *fi = ractl->file->private_data;
-	struct ceph_rw_context *rw_ctx;
-	int got = 0;
-	int ret = 0;
-
-	if (ceph_inode(inode)->i_inline_version != CEPH_INLINE_NONE)
-		return;
-
-	rw_ctx = ceph_find_rw_context(fi);
-	if (!rw_ctx) {
-		/*
-		 * readahead callers do not necessarily hold Fcb caps
-		 * (e.g. fadvise, madvise).
-		 */
-		int want = CEPH_CAP_FILE_CACHE;
-
-		ret = ceph_try_get_caps(inode, CEPH_CAP_FILE_RD, want, true, &got);
-		if (ret < 0)
-			dout("start_read %p, error getting cap\n", inode);
-		else if (!(got & want))
-			dout("start_read %p, no cache cap\n", inode);
-
-		if (ret <= 0)
-			return;
-	}
-	netfs_readahead(ractl, &ceph_netfs_read_ops, (void *)(uintptr_t)got);
+	netfs_readahead(ractl, &ceph_netfs_read_ops, NULL);
 }
 
 #ifdef CONFIG_CEPH_FSCACHE



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
