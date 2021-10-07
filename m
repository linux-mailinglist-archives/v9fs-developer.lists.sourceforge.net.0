Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB970425DFB
	for <lists+v9fs-developer@lfdr.de>; Thu,  7 Oct 2021 22:48:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mYaJG-0008KC-Gk; Thu, 07 Oct 2021 20:48:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mYaJF-0008K2-MJ
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 20:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZqbU7538GbZ8WBnSLVfxKi0wPIaObo8znbOgyBrQ4Yw=; b=QliYfuNEhXBGbArlP2aGMH8DG8
 +eZ5vnG6Lhtk8rOmQOFd06nptnN5/SL7ZIojMkbG7JWH3EvAGk8Jg8L2d9506MjnucLgLT/JjcxHG
 eTg2Z3vGSWGTFJpqBJObRoSsuD6hj2wCZWuOs4YrXSkgwVA8zHXdL/5gpcpIa8RrD2gs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZqbU7538GbZ8WBnSLVfxKi0wPIaObo8znbOgyBrQ4Yw=; b=lkJ5eu2zJWeLmfAww+XjaV2p98
 lxePiABZfDzeXNgkLnbd0FBIobpJq6I2J1iHHE/LYZxixvVxX4686DvigmXWmX9UMWP4tA1WkLjNj
 ASq5UfJgj8V//cVnZQuCHK+2PdFewU9OKrCP60FSZgkrl515+vgw4FWkNu6WuN/bsS6s=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mYaJE-0005Z7-Pv
 for v9fs-developer@lists.sourceforge.net; Thu, 07 Oct 2021 20:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633639682;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZqbU7538GbZ8WBnSLVfxKi0wPIaObo8znbOgyBrQ4Yw=;
 b=WDyW7zLbrdYrr8wQqx5NZKQtNCaJZom+qB7Swsp3yoPk19napEE8YBITW8nfud+6xyFDRa
 etBNYEZZ/A+kBptddnXOSjxCc70BcWmoqH6E3PaxmPZmkEAspSwS4vOa2nbLFiL2dFfOJh
 DZOsCKRM7UKMHVb3BvC7nVddhqYC7so=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-545-vgGss0BUO0muDXUD0MbujQ-1; Thu, 07 Oct 2021 16:48:01 -0400
X-MC-Unique: vgGss0BUO0muDXUD0MbujQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 176AE10B3FB7;
 Thu,  7 Oct 2021 20:43:35 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.44])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 46D3AC0222;
 Thu,  7 Oct 2021 20:43:32 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Thu, 07 Oct 2021 21:43:31 +0100
Message-ID: <163363941133.1980952.8507236797298999171.stgit@warthog.procyon.org.uk>
In-Reply-To: <163363935000.1980952.15279841414072653108.stgit@warthog.procyon.org.uk>
References: <163363935000.1980952.15279841414072653108.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In cachefiles_prepare_read(), always indicate to the netfs
 lib that a page beyond the EOF should be filled with zeros, even if we don't
 have a cache file attached because it's still being created. This avoids
 confusion in netfs_rreq_prepare_read() where it sees source ==
 NETFS_DOWNLOAD_FROM_SERVER, 
 where it consequently sees the read after the EOF getting reduced to 0 size
 and thus triggers the [...] 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mYaJE-0005Z7-Pv
Subject: [V9fs-developer] [PATCH v3 03/10] cachefiles: Always indicate we
 should fill a post-EOF page with zeros
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

In cachefiles_prepare_read(), always indicate to the netfs lib that a page
beyond the EOF should be filled with zeros, even if we don't have a cache
file attached because it's still being created.

This avoids confusion in netfs_rreq_prepare_read() where it sees source ==
NETFS_DOWNLOAD_FROM_SERVER, where it consequently sees the read after the
EOF getting reduced to 0 size and thus triggers the WARN_ON and marking the
read invalid.

Also don't try to check for data if there's a flag set indicating we don't
yet have anything stored in the cache.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c |   29 +++++++++++++++++------------
 1 file changed, 17 insertions(+), 12 deletions(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index 08b3183e0dce..dbc1c4421116 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -273,6 +273,7 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 	struct cachefiles_cache *cache;
 	const struct cred *saved_cred;
 	struct file *file = subreq->rreq->cache_resources.cache_priv2;
+	enum netfs_read_source ret = NETFS_DOWNLOAD_FROM_SERVER;
 	loff_t off, to;
 
 	_enter("%zx @%llx/%llx", subreq->len, subreq->start, i_size);
@@ -281,19 +282,24 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 	cache = container_of(object->fscache.cache,
 			     struct cachefiles_cache, cache);
 
-	if (!file)
-		goto cache_fail_nosec;
+	cachefiles_begin_secure(cache, &saved_cred);
 
-	if (subreq->start >= i_size)
-		return NETFS_FILL_WITH_ZEROES;
+	if (subreq->start >= i_size) {
+		ret = NETFS_FILL_WITH_ZEROES;
+		goto out;
+	}
 
-	cachefiles_begin_secure(cache, &saved_cred);
+	if (!file)
+		goto out;
+
+	if (test_bit(FSCACHE_COOKIE_NO_DATA_YET, &object->fscache.cookie->flags))
+		goto download_and_store;
 
 	off = vfs_llseek(file, subreq->start, SEEK_DATA);
 	if (off < 0 && off >= (loff_t)-MAX_ERRNO) {
 		if (off == (loff_t)-ENXIO)
 			goto download_and_store;
-		goto cache_fail;
+		goto out;
 	}
 
 	if (off >= subreq->start + subreq->len)
@@ -307,7 +313,7 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 
 	to = vfs_llseek(file, subreq->start, SEEK_HOLE);
 	if (to < 0 && to >= (loff_t)-MAX_ERRNO)
-		goto cache_fail;
+		goto out;
 
 	if (to < subreq->start + subreq->len) {
 		if (subreq->start + subreq->len >= i_size)
@@ -317,16 +323,15 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 		subreq->len = to - subreq->start;
 	}
 
-	cachefiles_end_secure(cache, saved_cred);
-	return NETFS_READ_FROM_CACHE;
+	ret = NETFS_READ_FROM_CACHE;
+	goto out;
 
 download_and_store:
 	if (cachefiles_has_space(cache, 0, (subreq->len + PAGE_SIZE - 1) / PAGE_SIZE) == 0)
 		__set_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags);
-cache_fail:
+out:
 	cachefiles_end_secure(cache, saved_cred);
-cache_fail_nosec:
-	return NETFS_DOWNLOAD_FROM_SERVER;
+	return ret;
 }
 
 /*




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
