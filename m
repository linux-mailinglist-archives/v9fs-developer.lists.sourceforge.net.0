Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA402432143
	for <lists+v9fs-developer@lfdr.de>; Mon, 18 Oct 2021 17:00:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mcU8F-0006sm-Ie; Mon, 18 Oct 2021 15:00:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1mcU83-0006r2-V5
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jdB/32s/uc8yVIqnMp8H9Wpa3fu6IqGejTkXRVt6ecY=; b=Jsang7roMMyMvRvF7C9LQpYfcK
 9KNNTAxKz1RV6Y7ZiSZs1AanVZuhEPzD0RiXNd8BuUliwbprKoLYi+WKwAlPVYORVsOxnmU9rnylg
 TK7Bd3UV6glPhdIZXv2V9GCpc5Ss+89IvhKXKwHAutyvMMRGkbEHJs7Gw1f8NqJNoNlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jdB/32s/uc8yVIqnMp8H9Wpa3fu6IqGejTkXRVt6ecY=; b=eEs5PxFxodmtHA0o0NRnNIJe+z
 c8o9howv2wRpELLoANwQpFs23jO3j2hTyNw3eNi6G7ZUINpE2kTAKOC7PmTl1sjr9XsxhJo1u6lE4
 lMI+/VzqLl8D2vwjCqkt2JNwRRs0gclIqsBsX9/IKxNDIt/H84vH6VVHXV/WM2XYCYbo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcU83-0004bB-1j
 for v9fs-developer@lists.sourceforge.net; Mon, 18 Oct 2021 15:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1634569198;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jdB/32s/uc8yVIqnMp8H9Wpa3fu6IqGejTkXRVt6ecY=;
 b=Y8Y7Vxz8ercwX7XdgfP3wgQObjtRR15jv9EoQakCTnAsPucxChVdULL/DfyLE8outl2U6m
 MNQA+yxPVQwN6Q5Zgf+6kBO6pyhRApXsaCgXV0QAy9/ijBHziRpseB7S4wcY2fUvevXePU
 6rsJCB4zEw8QO8q6EkEQa4zmSW84QLY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-NIMBeaJPN3WF7tGHAL-ytg-1; Mon, 18 Oct 2021 10:59:54 -0400
X-MC-Unique: NIMBeaJPN3WF7tGHAL-ytg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D33B80710A;
 Mon, 18 Oct 2021 14:59:52 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 728301037F36;
 Mon, 18 Oct 2021 14:59:49 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: linux-cachefs@redhat.com
Date: Mon, 18 Oct 2021 15:59:48 +0100
Message-ID: <163456918862.2614702.15568944072409008939.stgit@warthog.procyon.org.uk>
In-Reply-To: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
References: <163456861570.2614702.14754548462706508617.stgit@warthog.procyon.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Make the cachefiles_write_prepare() function check that
 there's
 sufficient space to fully satisfy a proposed write. If we already checked
 for allocated data during read preparation, then this fact can be used to
 skip the more thorough checks here. 
 Content analysis details:   (-1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
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
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1mcU83-0004bB-1j
Subject: [V9fs-developer] [PATCH 34/67] cachefiles: Make
 cachefiles_write_prepare() check for space
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

Make the cachefiles_write_prepare() function check that there's sufficient
space to fully satisfy a proposed write.

If we already checked for allocated data during read preparation, then this
fact can be used to skip the more thorough checks here.

If there's enough space in the cache, we just allow the write.

If we're uncertain, then we use SEEK_DATA/SEEK_HOLE to check if the block
is already fully allocated - and if it is, we just allow the write.

However, if there's insufficient space for the whole write and there's
partially allocated data in the file, we punch out that data and disallow
the write.  This frees up some space and removes old data from the cache.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 fs/cachefiles/io.c     |   82 ++++++++++++++++++++++++++++++++++++++++++++----
 fs/netfs/read_helper.c |    2 +
 include/linux/netfs.h  |    3 +-
 3 files changed, 79 insertions(+), 8 deletions(-)

diff --git a/fs/cachefiles/io.c b/fs/cachefiles/io.c
index c05f64cdfd0e..350243b45dd5 100644
--- a/fs/cachefiles/io.c
+++ b/fs/cachefiles/io.c
@@ -9,6 +9,7 @@
 #include <linux/slab.h>
 #include <linux/file.h>
 #include <linux/uio.h>
+#include <linux/falloc.h>
 #include <linux/sched/mm.h>
 #include <trace/events/fscache.h>
 #include "internal.h"
@@ -385,8 +386,7 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 	goto out;
 
 download_and_store:
-	if (cachefiles_has_space(cache, 0, (subreq->len + PAGE_SIZE - 1) / PAGE_SIZE) == 0)
-		__set_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags);
+	__set_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags);
 out:
 	cachefiles_end_secure(cache, saved_cred);
 out_no_object:
@@ -397,17 +397,87 @@ static enum netfs_read_source cachefiles_prepare_read(struct netfs_read_subreque
 /*
  * Prepare for a write to occur.
  */
-static int cachefiles_prepare_write(struct netfs_cache_resources *cres,
-				    loff_t *_start, size_t *_len, loff_t i_size)
+static int __cachefiles_prepare_write(struct netfs_cache_resources *cres,
+				      loff_t *_start, size_t *_len, loff_t i_size,
+				      bool no_space_allocated_yet)
 {
-	loff_t start = *_start;
+	struct cachefiles_object *object = cachefiles_cres_object(cres);
+	struct cachefiles_cache *cache = object->volume->cache;
+	struct file *file = cachefiles_cres_file(cres);
+	loff_t start = *_start, pos;
 	size_t len = *_len, down;
+	int ret;
 
 	/* Round to DIO size */
 	down = start - round_down(start, PAGE_SIZE);
 	*_start = start - down;
 	*_len = round_up(down + len, PAGE_SIZE);
-	return 0;
+
+	/* We need to work out whether there's sufficient disk space to perform
+	 * the write - but we can skip that check if we have space already
+	 * allocated.
+	 */
+	if (no_space_allocated_yet)
+		goto check_space;
+
+	pos = vfs_llseek(file, *_start, SEEK_DATA);
+	if (pos < 0 && pos >= (loff_t)-MAX_ERRNO) {
+		if (pos == -ENXIO)
+			goto check_space; /* Unallocated tail */
+		return pos;
+	}
+	if ((u64)pos >= (u64)*_start + *_len)
+		goto check_space; /* Unallocated region */
+
+	/* We have a block that's at least partially filled - if we're low on
+	 * space, we need to see if it's fully allocated.  If it's not, we may
+	 * want to cull it.
+	 */
+	if (cachefiles_has_space(cache, 0, *_len / PAGE_SIZE) == 0)
+		return 0; /* Enough space to simply overwrite the whole block */
+
+	pos = vfs_llseek(file, *_start, SEEK_HOLE);
+	if (pos < 0 && pos >= (loff_t)-MAX_ERRNO)
+		return pos;
+	if ((u64)pos >= (u64)*_start + *_len)
+		return 0; /* Fully allocated */
+
+	/* Partially allocated, but insufficient space: cull. */
+	ret = vfs_fallocate(file, FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
+			    *_start, *_len);
+	if (ret < 0) {
+		cachefiles_io_error_obj(object,
+					"CacheFiles: fallocate failed (%d)\n", ret);
+		ret = -EIO;
+	}
+
+	return ret;
+
+check_space:
+	return cachefiles_has_space(cache, 0, *_len / PAGE_SIZE);
+}
+
+static int cachefiles_prepare_write(struct netfs_cache_resources *cres,
+				    loff_t *_start, size_t *_len, loff_t i_size,
+				    bool no_space_allocated_yet)
+{
+	struct cachefiles_object *object = cachefiles_cres_object(cres);
+	struct cachefiles_cache *cache = object->volume->cache;
+	const struct cred *saved_cred;
+	int ret;
+
+	if (!cachefiles_cres_file(cres)) {
+		if (!fscache_wait_for_operation(cres, FSCACHE_WANT_WRITE))
+			return -ENOBUFS;
+		if (!cachefiles_cres_file(cres))
+			return -ENOBUFS;
+	}
+
+	cachefiles_begin_secure(cache, &saved_cred);
+	ret = __cachefiles_prepare_write(cres, _start, _len, i_size,
+					 no_space_allocated_yet);
+	cachefiles_end_secure(cache, saved_cred);
+	return ret;
 }
 
 /*
diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
index dfc60c79a9f3..80f8e334371d 100644
--- a/fs/netfs/read_helper.c
+++ b/fs/netfs/read_helper.c
@@ -323,7 +323,7 @@ static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
 		}
 
 		ret = cres->ops->prepare_write(cres, &subreq->start, &subreq->len,
-					       rreq->i_size);
+					       rreq->i_size, true);
 		if (ret < 0) {
 			trace_netfs_failure(rreq, subreq, ret, netfs_fail_prepare_write);
 			trace_netfs_sreq(subreq, netfs_sreq_trace_write_skip);
diff --git a/include/linux/netfs.h b/include/linux/netfs.h
index 014fb502fd91..99137486d351 100644
--- a/include/linux/netfs.h
+++ b/include/linux/netfs.h
@@ -220,7 +220,8 @@ struct netfs_cache_ops {
 	 * actually do.
 	 */
 	int (*prepare_write)(struct netfs_cache_resources *cres,
-			     loff_t *_start, size_t *_len, loff_t i_size);
+			     loff_t *_start, size_t *_len, loff_t i_size,
+			     bool no_space_allocated_yet);
 
 	/* Prepare a write operation for the fallback fscache API, working out
 	 * whether we can cache a page or not.




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
