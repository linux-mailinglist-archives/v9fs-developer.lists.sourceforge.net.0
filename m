Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D55735A567
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 20:11:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUvbd-0001Kf-MO; Fri, 09 Apr 2021 18:11:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lUvbb-0001K7-0v
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 18:11:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5d5CRe7IR0f5T94H4kpE1JA/jjTHWSiDJcptaMUWhGo=; b=RrDgBv78Fj4acpKuCT0ZpWyAQm
 veBt6CqaglmCzYMJQUtfB5kI4oGp7gu97ZrojjZUnIdQcmt0zdnrkp55ircn0/DDvV9h5hWlbq9l8
 o7LspzjBwCJn5CbfIDyqsciAxTqYWcBuMYftOJqqB/nQZCEIXAi9xnCUxdBHxdNF5B8Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5d5CRe7IR0f5T94H4kpE1JA/jjTHWSiDJcptaMUWhGo=; b=ZVc32/+NQx7wr7YI4vGO2cH7VQ
 WfeGb1nLsi//J2x1Wsc+lERTgHzhyfek5jnKvzrJClKMBOz0lLpkBSVraIedyska3XsEcVyQKIufO
 h8zAPXTFzbtgWN6NeJNVfQlnyGWwI4hiUDm51VVAlDm/YXSJ/1hmNHMmf9YCXM9VsbwU=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUvbI-00BkL2-Iv
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 18:11:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617991878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5d5CRe7IR0f5T94H4kpE1JA/jjTHWSiDJcptaMUWhGo=;
 b=JzJuf/O6RGk4Weojx+P6Pa+Zl4UkJ/2k/DDZxL9kjVl735xk2kYZxX4weycgTUA7Z+Xr70
 4pHy9cgJT0tAT++nJQ1DewRKfy+fyZV0lH2lYyioWSO4CRPTgGXJc8ZKcclnX2WBOsfIhW
 OwNoX/8wvHg8QQLem9uCqqmYlHGtl5g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-b8GGSwwLNoyHcRe1YIYpDg-1; Fri, 09 Apr 2021 14:11:14 -0400
X-MC-Unique: b8GGSwwLNoyHcRe1YIYpDg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 082B8801FCE;
 Fri,  9 Apr 2021 18:11:13 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6E08160D79;
 Fri,  9 Apr 2021 18:11:07 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: viro@zeniv.linux.org.uk
Date: Fri, 09 Apr 2021 19:11:06 +0100
Message-ID: <161799186664.847742.14555840742293852768.stgit@warthog.procyon.org.uk>
In-Reply-To: <YG+s0iw5o91KQIlW@zeniv-ca.linux.org.uk>
References: <YG+s0iw5o91KQIlW@zeniv-ca.linux.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUvbI-00BkL2-Iv
Subject: [V9fs-developer] [RFC PATCH 2/2] iov_iter: Drop the X argument from
 iterate_all_kinds() and use B instead
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
Cc: linux-cifs@vger.kernel.org, linux-nfs@vger.kernel.org, jlayton@kernel.org,
 linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-afs@lists.infradead.org, dhowells@redhat.com, linux-mm@kvack.org,
 linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Drop the X argument from iterate_all_kinds() and use the B argument instead
as it's always the same unless the ITER_XARRAY is handled specially.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 lib/iov_iter.c |   42 ++++++++++++------------------------------
 1 file changed, 12 insertions(+), 30 deletions(-)

diff --git a/lib/iov_iter.c b/lib/iov_iter.c
index 93e9838c128d..144abdac11db 100644
--- a/lib/iov_iter.c
+++ b/lib/iov_iter.c
@@ -79,8 +79,8 @@
 #define iterate_xarray(i, n, __v, skip, STEP) {		\
 	struct page *head = NULL;				\
 	size_t wanted = n, seg, offset;				\
-	loff_t start = i->xarray_start + skip;			\
-	pgoff_t index = start >> PAGE_SHIFT;			\
+	loff_t xarray_start = i->xarray_start + skip;		\
+	pgoff_t index = xarray_start >> PAGE_SHIFT;		\
 	int j;							\
 								\
 	XA_STATE(xas, i->xarray, index);			\
@@ -113,7 +113,7 @@
 	n = wanted - n;						\
 }
 
-#define iterate_all_kinds(i, n, v, I, B, K, X) {		\
+#define iterate_all_kinds(i, n, v, I, B, K) {			\
 	if (likely(n)) {					\
 		size_t skip = i->iov_offset;			\
 		if (unlikely(i->type & ITER_BVEC)) {		\
@@ -127,7 +127,7 @@
 		} else if (unlikely(i->type & ITER_DISCARD)) {	\
 		} else if (unlikely(i->type & ITER_XARRAY)) {	\
 			struct bio_vec v;			\
-			iterate_xarray(i, n, v, skip, (X));	\
+			iterate_xarray(i, n, v, skip, (B));	\
 		} else {					\
 			const struct iovec *iov;		\
 			struct iovec v;				\
@@ -842,9 +842,7 @@ bool _copy_from_iter_full(void *addr, size_t bytes, struct iov_iter *i)
 		0;}),
 		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
 				 v.bv_offset, v.bv_len),
-		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
-		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
-				 v.bv_offset, v.bv_len)
+		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len)
 	)
 
 	iov_iter_advance(i, bytes);
@@ -927,9 +925,7 @@ bool _copy_from_iter_full_nocache(void *addr, size_t bytes, struct iov_iter *i)
 		0;}),
 		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
 				 v.bv_offset, v.bv_len),
-		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
-		memcpy_from_page((to += v.bv_len) - v.bv_len, v.bv_page,
-				 v.bv_offset, v.bv_len)
+		memcpy((to += v.iov_len) - v.iov_len, v.iov_base, v.iov_len)
 	)
 
 	iov_iter_advance(i, bytes);
@@ -1058,9 +1054,7 @@ size_t iov_iter_copy_from_user_atomic(struct page *page,
 		copyin((p += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
 		memcpy_from_page((p += v.bv_len) - v.bv_len, v.bv_page,
 				 v.bv_offset, v.bv_len),
-		memcpy((p += v.iov_len) - v.iov_len, v.iov_base, v.iov_len),
-		memcpy_from_page((p += v.bv_len) - v.bv_len, v.bv_page,
-				 v.bv_offset, v.bv_len)
+		memcpy((p += v.iov_len) - v.iov_len, v.iov_base, v.iov_len)
 	)
 	kunmap_atomic(kaddr);
 	return bytes;
@@ -1349,8 +1343,7 @@ unsigned long iov_iter_alignment(const struct iov_iter *i)
 	iterate_all_kinds(i, size, v,
 		(res |= (unsigned long)v.iov_base | v.iov_len, 0),
 		res |= v.bv_offset | v.bv_len,
-		res |= (unsigned long)v.iov_base | v.iov_len,
-		res |= v.bv_offset | v.bv_len
+		res |= (unsigned long)v.iov_base | v.iov_len
 	)
 	return res;
 }
@@ -1372,9 +1365,7 @@ unsigned long iov_iter_gap_alignment(const struct iov_iter *i)
 		(res |= (!res ? 0 : (unsigned long)v.bv_offset) |
 			(size != v.bv_len ? size : 0)),
 		(res |= (!res ? 0 : (unsigned long)v.iov_base) |
-			(size != v.iov_len ? size : 0)),
-		(res |= (!res ? 0 : (unsigned long)v.bv_offset) |
-			(size != v.bv_len ? size : 0))
+			(size != v.iov_len ? size : 0))
 		);
 	return res;
 }
@@ -1530,8 +1521,7 @@ ssize_t iov_iter_get_pages(struct iov_iter *i,
 		return v.bv_len;
 	}),({
 		return -EFAULT;
-	}),
-	0
+	})
 	)
 	return 0;
 }
@@ -1665,7 +1655,7 @@ ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,
 		return v.bv_len;
 	}),({
 		return -EFAULT;
-	}), 0
+	})
 	)
 	return 0;
 }
@@ -1751,13 +1741,6 @@ bool csum_and_copy_from_iter_full(void *addr, size_t bytes, __wsum *csum,
 				      v.iov_base, v.iov_len,
 				      sum, off);
 		off += v.iov_len;
-	}), ({
-		char *p = kmap_atomic(v.bv_page);
-		sum = csum_and_memcpy((to += v.bv_len) - v.bv_len,
-				      p + v.bv_offset, v.bv_len,
-				      sum, off);
-		kunmap_atomic(p);
-		off += v.bv_len;
 	})
 	)
 	*csum = sum;
@@ -1892,8 +1875,7 @@ int iov_iter_npages(const struct iov_iter *i, int maxpages)
 			- p / PAGE_SIZE;
 		if (npages >= maxpages)
 			return maxpages;
-	}),
-	0
+	})
 	)
 	return npages;
 }




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
