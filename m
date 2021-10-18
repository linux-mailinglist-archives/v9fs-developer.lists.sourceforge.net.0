Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 234F14321E7
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:06:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcUDr-0007Gf-RQ; Mon, 18 Oct 2021 15:06:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1mcUDp-0007GH-QF
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=veiaXltL6VCtrjdWipdEmPq2N2GsVmVphqdEUrpeTnQ=; b=ilaOXrei02lRx/0X6Hdgr8mKE1
 xEQHRBU9dTAi+a9cOZwvolxg/2loSXdWjW64UbaKW3s5w8BPo9+z4fmWKzStLOdv7gAZXFj17Vih/
 IaXIfpZZozJSZdsNW2G+WjwOb8UjlH2r3D39ipNbz1VxATY0quyhAXYMFJ+X62Io9l6Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=veiaXltL6VCtrjdWipdEmPq2N2GsVmVphqdEUrpeTnQ=; b=kfF4pK4QosiM5QN8xvRw/BvPPP
 QzIgDRnD4epsRAZegCzLS1yhEwcD/tk1x81ZW/kvPByGRBlWD+D7I7KJjp0VwnOXkdJEnf53APzQs
 CxJUOLNFbqPI9KTxUXl1dtWiID01HC3Mvn0RIXF8vTRDuf/YiRoYgwbahaoypMesd0DA=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcUDc-0005V2-JI
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:06:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569582;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=veiaXltL6VCtrjdWipdEmPq2N2GsVmVphqdEUrpeTnQ=;
 b=JudfniBmsT7OC2mNnu6ghtwS+fU+661HOL00Ze+3+EYjpYcwNomsbHBex1td+5Jv0Ye7uO
 Ks7nxyascmMHuSIw6s7MFS5uBrCcCic/UojH/KwpjgDaTVoVKxLrToM8p4AT4w27Q8H4Zy
 Y5NwhpNC/Z6+ITxBVJD+7VcvnO/g0dI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-278-Ey0meNAIMT-wBxUNPFUEoA-1; Mon, 18 Oct 2021 11:06:21 -0400
X-MC-Unique: Ey0meNAIMT-wBxUNPFUEoA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 754B0DF8A4;
 Mon, 18 Oct 2021 15:06:19 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2E37C60E1C;
 Mon, 18 Oct 2021 15:05:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 16:05:52 +0100
Message-ID: <163456955230.2614702.5960779119312105796.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Drive the FSCACHE_COOKIE_NO_DATA_TO_READ bit to skip reads
 on cache files that can't have any data available to read. This needs clearing
 once we've written some data and then released the netfs page [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.133.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcUDc-0005V2-JI
Subject: [V9fs-developer] [PATCH 57/67] cachefiles,
 afs: Drive FSCACHE_COOKIE_NO_DATA_TO_READ
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

Drive the FSCACHE_COOKIE_NO_DATA_TO_READ bit to skip reads on cache files
that can't have any data available to read.  This needs clearing once we've
written some data and then released the netfs page that contained it.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/afs/file.c           |    1 +
 fs/cachefiles/io.c      |    1 +
 fs/fscache/cookie.c     |    2 ++
 include/linux/fscache.h |   16 ++++++++++++++++
 4 files changed, 20 insertions(+)

diff --git a/fs/afs/file.c b/fs/afs/file.c
index 5db1e7d29ad5..7fe57f210259 100644
--- a/fs/afs/file.c
+++ b/fs/afs/file.c
@@ -506,6 +506,7 @@ static int afs_releasepage(struct page *page, gfp_t gfp_flags)
 			return false;
 		wait_on_page_fscache(page);
 	}
+	fscache_note_page_release(afs_vnode_cache(vnode));
 #endif
 
 	if (PagePrivate(page)) {
diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index 9b3b55a94e66..5e3579800689 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -195,6 +195,7 @@ static void cachefiles_write_complete(struct kiocb *iocb, long ret, long ret2)
 	__sb_writers_acquired(inode->i_sb, SB_FREEZE_WRITE);
 	__sb_end_write(inode->i_sb, SB_FREEZE_WRITE);
 
+	set_bit(FSCACHE_COOKIE_HAVE_DATA, &ki->object->cookie->flags);
 	if (ki->term_func)
 		ki->term_func(ki->term_func_priv, ret, ki->was_async);
 	cachefiles_put_kiocb(ki);
diff --git a/fs/fscache/cookie.c b/fs/fscache/cookie.c
index 1420027cfe97..369f9258bb50 100644
--- a/fs/fscache/cookie.c
+++ b/fs/fscache/cookie.c
@@ -263,6 +263,8 @@ static struct fscache_cookie *fscache_alloc_cookie(
 	cookie->key_len		= index_key_len;
 	cookie->aux_len		= aux_data_len;
 	cookie->object_size	= object_size;
+	if (object_size == 0)
+		__set_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
 
 	if (fscache_set_key(cookie, index_key, index_key_len) < 0)
 		goto nomem;
diff --git a/include/linux/fscache.h b/include/linux/fscache.h
index ba192567d099..d18b7d3564ab 100644
--- a/include/linux/fscache.h
+++ b/include/linux/fscache.h
@@ -131,6 +131,7 @@ struct fscache_cookie {
 #define FSCACHE_COOKIE_DO_WITHDRAW	10		/* T if this cookie needs withdrawing */
 #define FSCACHE_COOKIE_DO_COMMIT	11		/* T if this cookie needs committing */
 #define FSCACHE_COOKIE_DO_PREP_TO_WRITE	12		/* T if cookie needs write preparation */
+#define FSCACHE_COOKIE_HAVE_DATA	13		/* T if this cookie has data stored */
 
 	enum fscache_cookie_stage	stage;
 	u8				advice;		/* FSCACHE_ADV_* */
@@ -643,7 +644,22 @@ static inline void fscache_clear_inode_writeback(struct fscache_cookie *cookie,
 		loff_t i_size = i_size_read(inode);
 		fscache_unuse_cookie(cookie, aux, &i_size);
 	}
+}
 
+/**
+ * fscache_note_page_release - Note that a netfs page got released
+ * @cookie: The cookie corresponding to the file
+ *
+ * Note that a page that has been copied to the cache has been released.  This
+ * means that future reads will need to look in the cache to see if it's there.
+ */
+static inline
+void fscache_note_page_release(struct fscache_cookie *cookie)
+{
+	if (cookie &&
+	    test_bit(FSCACHE_COOKIE_HAVE_DATA, &cookie->flags) &&
+	    test_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags))
+		clear_bit(FSCACHE_COOKIE_NO_DATA_TO_READ, &cookie->flags);
 }
 
 #ifdef FSCACHE_USE_FALLBACK_IO_API




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
