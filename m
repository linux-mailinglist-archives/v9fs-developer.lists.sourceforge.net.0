Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE64E46192A
	for <lists+v9fs-developer@lfdr.de>; Mon, 29 Nov 2021 15:34:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mrhjQ-0005nb-Fk; Mon, 29 Nov 2021 14:34:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mrhjG-0005mz-EV
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:34:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BIl6S6tLnztbwnZQ+D2ARsxxfs4zSEMjqZeJuEcCUYE=; b=j+QG6uyJAAFKoECn1i0HfsBkWE
 bvY3p0PNS4c/EjTH+1J/6UwUlcxdBYMiqAYAA2oalRsUYfiYY+ZzZt2xsKfenjr1RKDlHm+HspRFp
 rS5rtJdy4Mj53WkeXmpIYekIzY5l3hTHX4Ebt0Xjmn61ZfgA+AUW7B8ArIuY+la0n8Mc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BIl6S6tLnztbwnZQ+D2ARsxxfs4zSEMjqZeJuEcCUYE=; b=RPGdF4a9US5twgihTEz1NDtlPn
 U1zWoN2IM9TQY3/EuxgM7ziCVIq+cwGY5BCOZ1OmtosYYPv+nmLFuLpHnXCjvgvE3xA4qZIsnh7xB
 zVHC99B2HKJa6lTyNY+Ci61QKR0338XOpQgN9VARY78xmMZrIIKtidSeDFazZnV44scI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrhjA-00EDqo-1F
 for v9fs-developer@lists.sourceforge.net; Mon, 29 Nov 2021 14:33:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1638196430;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BIl6S6tLnztbwnZQ+D2ARsxxfs4zSEMjqZeJuEcCUYE=;
 b=gjhQnKbo15AYdRVIpT1BAdccLF5bnTCROQOn/TK3U0YXnvTZi/+tHqbYWhh1zOogsZRsmz
 zGm/W+tDbTwdFwSmfqPerY1/LVvQwIta+mVAEbHAYS/osABc6t3kPr0/8jzxL0F68rbnyM
 pP9+aeBlNjPIj0Rv/8Y3jCEY/L18XRU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-453-ZN8XkOn9OLmvKlAlXSDyhA-1; Mon, 29 Nov 2021 09:33:48 -0500
X-MC-Unique: ZN8XkOn9OLmvKlAlXSDyhA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8F8D7835E2F;
 Mon, 29 Nov 2021 14:33:46 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 868716060F;
 Mon, 29 Nov 2021 14:33:43 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 29 Nov 2021 14:33:42 +0000
Message-ID: <163819642273.215744.6414248677118690672.stgit@warthog.procyon.org.uk>
In-Reply-To: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
References: <163819575444.215744.318477214576928110.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Use an inode flag, S_KERNEL_FILE, to mark that a backing file
 is in use by the kernel to prevent cachefiles or other kernel services from
 interfering with that file. Using S_SWAPFILE instead isn't really viable
 as that has other effects in the I/O paths. 
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [170.10.129.124 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mrhjA-00EDqo-1F
Subject: [V9fs-developer] [PATCH 46/64] cachefiles: Mark a backing file in
 use with an inode flag
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
 linux-cifs@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, dhowells@redhat.com,
 v9fs-developer@lists.sourceforge.net, Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 ceph-devel@vger.kernel.org, Omar Sandoval <osandov@osandov.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Use an inode flag, S_KERNEL_FILE, to mark that a backing file is in use by
the kernel to prevent cachefiles or other kernel services from interfering
with that file.

Using S_SWAPFILE instead isn't really viable as that has other effects in
the I/O paths.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/internal.h |    2 ++
 fs/cachefiles/namei.c    |   35 +++++++++++++++++++++++++++++++++++
 2 files changed, 37 insertions(+)

diff --git a/fs/cachefiles/internal.h b/fs/cachefiles/internal.h
index fbb38d3e6cac..ebb39373716b 100644
--- a/fs/cachefiles/internal.h
+++ b/fs/cachefiles/internal.h
@@ -187,6 +187,8 @@ extern struct kmem_cache *cachefiles_object_jar;
 /*
  * namei.c
  */
+extern void cachefiles_unmark_inode_in_use(struct cachefiles_object *object,
+					   struct file *file);
 extern struct dentry *cachefiles_get_directory(struct cachefiles_cache *cache,
 					       struct dentry *dir,
 					       const char *name);
diff --git a/fs/cachefiles/namei.c b/fs/cachefiles/namei.c
index 25ca41952dab..2e209e403713 100644
--- a/fs/cachefiles/namei.c
+++ b/fs/cachefiles/namei.c
@@ -32,6 +32,18 @@ static bool __cachefiles_mark_inode_in_use(struct cachefiles_object *object,
 	return can_use;
 }
 
+static bool cachefiles_mark_inode_in_use(struct cachefiles_object *object,
+					 struct dentry *dentry)
+{
+	struct inode *inode = d_backing_inode(dentry);
+	bool can_use;
+
+	inode_lock(inode);
+	can_use = __cachefiles_mark_inode_in_use(object, dentry);
+	inode_unlock(inode);
+	return can_use;
+}
+
 /*
  * Unmark a backing inode.  The caller must hold the inode lock.
  */
@@ -44,6 +56,29 @@ static void __cachefiles_unmark_inode_in_use(struct cachefiles_object *object,
 	trace_cachefiles_mark_inactive(object, inode);
 }
 
+/*
+ * Unmark a backing inode and tell cachefilesd that there's something that can
+ * be culled.
+ */
+void cachefiles_unmark_inode_in_use(struct cachefiles_object *object,
+				    struct file *file)
+{
+	struct cachefiles_cache *cache = object->volume->cache;
+	struct inode *inode = file_inode(file);
+
+	if (inode) {
+		inode_lock(inode);
+		__cachefiles_unmark_inode_in_use(object, file->f_path.dentry);
+		inode_unlock(inode);
+
+		if (!test_bit(CACHEFILES_OBJECT_USING_TMPFILE, &object->flags)) {
+			atomic_long_add(inode->i_blocks, &cache->b_released);
+			if (atomic_inc_return(&cache->f_released))
+				cachefiles_state_changed(cache);
+		}
+	}
+}
+
 /*
  * get a subdirectory
  */




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
