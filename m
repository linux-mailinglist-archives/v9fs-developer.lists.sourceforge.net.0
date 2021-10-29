Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB94843FE2A
	for <lists+v9fs-developer@lfdr.de>; Fri, 29 Oct 2021 16:12:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mgScC-0001eS-BY; Fri, 29 Oct 2021 14:12:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dhowells@redhat.com>) id 1mgScB-0001e7-24
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 14:12:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZqbU7538GbZ8WBnSLVfxKi0wPIaObo8znbOgyBrQ4Yw=; b=m7XGLm5anmI6sNBnT0o3HWt1pU
 2EjpI7X6ReRUECfP/1O8ydkrg5romK/yCauZJpZQYOa+RVJFLIimDmnID6Rlfve0esWfrKqryHzVE
 LAR9FUL+4/+zZwEXqW+ELQmDryuFkeW9NaBDpYo3r7PJNXJc+mWfsS6/TC9AoG1Rcftk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZqbU7538GbZ8WBnSLVfxKi0wPIaObo8znbOgyBrQ4Yw=; b=mNNB+45x9m2ePQwdcMaj4GPqwA
 rtn5OlCXypNMyUmUOQoP6TIYxl2+OLQl4faA2zWKR1P7cGtz4b0K0vKREeznZGEqJPv9IJTLzEq9N
 YcdiSC2NZfR/0m5d+cJpeO974CEi3+vlabIfZ6IBDHd7ZBF1nVrl43Ie3cDMYZKi96kk=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mgSc3-0001UY-UY
 for v9fs-developer@lists.sourceforge.net; Fri, 29 Oct 2021 14:12:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635516722;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZqbU7538GbZ8WBnSLVfxKi0wPIaObo8znbOgyBrQ4Yw=;
 b=aKO188cvobXXBeie+WsxPg2j9dXlVk1fFLY3iNR7QR6eqfiFWobqUKGR19DjAmdRqK96qG
 LgTUAPmcbDyzFyPIYvHPCwS92TCtPHBYiiWObUOKqQyy3XO/6T3GMrJtvn2ftCptkmaQEw
 1/gUNHIzz4SjE/bj7Jwbs7EP6gnE0Yo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-369-8UMQTdOHOsm7evF6C-An_w-1; Fri, 29 Oct 2021 10:09:58 -0400
X-MC-Unique: 8UMQTdOHOsm7evF6C-An_w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 81EFB1006AA5;
 Fri, 29 Oct 2021 14:09:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A422A60854;
 Fri, 29 Oct 2021 14:09:53 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: Trond Myklebust <trondmy@hammerspace.com>,
 Anna Schumaker <anna.schumaker@netapp.com>, Steve French <sfrench@samba.org>, 
 Dominique Martinet <asmadeus@codewreck.org>
Date: Fri, 29 Oct 2021 15:09:52 +0100
Message-ID: <163551659286.1877519.2951437510049163050.stgit@warthog.procyon.org.uk>
In-Reply-To: <163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk>
References: <163551653404.1877519.12363794970541005441.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [216.205.24.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.205.24.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mgSc3-0001UY-UY
Subject: [V9fs-developer] [PATCH v4 03/10] cachefiles: Always indicate we
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
 ceph-devel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-afs@lists.infradead.org
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
