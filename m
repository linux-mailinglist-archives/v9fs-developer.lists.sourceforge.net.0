Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 98FCC4321BD
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:05:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcUCH-0007CY-9j; Mon, 18 Oct 2021 15:05:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcUCF-0007CR-US
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=34+aPebgzzHxYJ84OQLGkAmjt/20nxAv2uPWKUz1+/c=; b=DvQSvf78sUcxVeFPWKR6XfEfVd
 N59iOvkA1lPGTgtRfEvJwUYYxN2LSq/SixF1wDulbRL7eNlfnOAzzG0bLPaowf+cfo8mrRNiI3BRW
 AznqQ4zdYv/SW0GKt+ww9x7OJFBnfIbMtoTvt8VXZWovoA5oHYKBHDzPpvY0v+akCF48=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=34+aPebgzzHxYJ84OQLGkAmjt/20nxAv2uPWKUz1+/c=; b=YzfSGCW7dMDK7r4QJBhGHHJCqC
 oftoZXnnO7OcXOqsAfVs7zbBJLkI/1HBw4f4cA+F8fnxhzddLnwoQ+dA9fd9gUgxSOHc/e/sL8JdW
 cYv+BilbRTEXh68UCX2spk+5cKH9mDFQ/K1sS35nvDS9l/fP72eHsbewsmX/sLN+JB7Q=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcUCE-0005Q9-Kb
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:05:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569496;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=34+aPebgzzHxYJ84OQLGkAmjt/20nxAv2uPWKUz1+/c=;
 b=Z/EozGy7qjJmMztf1Ejgkqi2YA/4CD5F8Q2asQ9o+hkmExa+wKANKcgHr0DkXRkz1B57iY
 WzBq6Qegqc67rvJ39Kv1AKBMD4I/7EsL6fFzD36EQNxYXk7LjPQujO0OShBMqeLbBIFhXu
 YuErtphcVd0vz57PgNAUS3uNkof/aBM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-ouOaMab7MBK4Y2RN2Uc4WA-1; Mon, 18 Oct 2021 11:04:53 -0400
X-MC-Unique: ouOaMab7MBK4Y2RN2Uc4WA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 21E2E80982E;
 Mon, 18 Oct 2021 15:04:51 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B868F108D7;
 Mon, 18 Oct 2021 15:04:09 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:04:08 +0100
Message-ID: <163456944892.2614702.6257175032771958470.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Invoke fscache_resize_cookie() to adjust the size of the
 backing
 cache object when setattr is called with ATTR_SIZE. This discards any data
 that then lies beyond the revised EOF and frees up space. Signed-off-by:
 David Howells <dhowells@redhat.com> cc: Marc Dionne <marc.dionne@auristor.com>
 cc: linux-afs@lists.infradead.org --- 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcUCE-0005Q9-Kb
Subject: [V9fs-developer] [PATCH 53/67] afs: Invoke fscache_resize_cookie()
 when handling ATTR_SIZE for setattr
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
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Invoke fscache_resize_cookie() to adjust the size of the backing cache
object when setattr is called with ATTR_SIZE.  This discards any data that
then lies beyond the revised EOF and frees up space.

Signed-off-by: David Howells <dhowells@redhat.com>
cc: Marc Dionne <marc.dionne@auristor.com>
cc: linux-afs@lists.infradead.org
---

 fs/afs/inode.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/afs/inode.c b/fs/afs/inode.c
index 311df66c64d0..c4af4fda37dd 100644
--- a/fs/afs/inode.c
+++ b/fs/afs/inode.c
@@ -829,6 +829,9 @@ static void afs_setattr_edit_file(struct afs_operation *op)
 
 		if (size < i_size)
 			truncate_pagecache(inode, size);
+		if (size != i_size)
+			fscache_resize_cookie(afs_vnode_cache(vp->vnode),
+					      vp->scb.status.size);
 	}
 }
 
@@ -872,6 +875,8 @@ int afs_setattr(struct user_namespace *mnt_userns, struct dentry *dentry,
 			attr->ia_valid &= ~ATTR_SIZE;
 	}
 
+	fscache_use_cookie(afs_vnode_cache(vnode), true);
+
 	/* flush any dirty data outstanding on a regular file */
 	if (S_ISREG(vnode->vfs_inode.i_mode))
 		filemap_write_and_wait(vnode->vfs_inode.i_mapping);
@@ -903,6 +908,7 @@ int afs_setattr(struct user_namespace *mnt_userns, struct dentry *dentry,
 
 out_unlock:
 	up_write(&vnode->validate_lock);
+	fscache_unuse_cookie(afs_vnode_cache(vnode), NULL, NULL);
 	_leave(" = %d", ret);
 	return ret;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
