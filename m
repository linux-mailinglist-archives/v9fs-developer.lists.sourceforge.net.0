Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAC035A566
	for <lists+v9fs-developer@lfdr.de>; Fri,  9 Apr 2021 20:11:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lUvbZ-0006WP-5J; Fri, 09 Apr 2021 18:11:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dhowells@redhat.com>) id 1lUvbX-0006W7-Jz
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 18:11:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RgtAbf2LjG2l+2155p4OwWEE/xnbluMbW9xCxJONACw=; b=ZCpN1c4Kx/vzDpF/l7ULXxNbMc
 rBEjqSzcByDeDw+lsSm3P21j/wihnGbvLNqZ0U/Qx4Wvjz/uYRk8l0pWYhTDI4FicZWZteKQ03AT6
 LXoCChtnV3cx4hNtw9bC9QF9rv+LJZEC2GIaLr6Zy3BwGZCrPsAuJWwOjChBUk7ZTiIk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Cc:To:From:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RgtAbf2LjG2l+2155p4OwWEE/xnbluMbW9xCxJONACw=; b=LE6IM8aKmDBxtbiFiGax5QTgwp
 YiMbv/9kf5qx1ZeuRST1fkxBPJa6xOr5tUVVAm1E4HlSu6D3ibfHtC1Zb6DcZcjrfNDYHfCfg0qm+
 UT7PPe+aLknROIpcTfns8cZnPQ5OftRR6Td1+x0uhLAP0nnHn5KMPBLOA1u6C3FyiegM=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lUvb6-0004w7-Jf
 for v9fs-developer@lists.sourceforge.net; Fri, 09 Apr 2021 18:11:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617991865;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RgtAbf2LjG2l+2155p4OwWEE/xnbluMbW9xCxJONACw=;
 b=MBhVUn3IB9egZD8vCVWDZM/536LcrEoBOQJH0HAsydfG4KHe2G7BMrCe+5nGd8WLH8JrZk
 M/5pKeOLeQOtYRTTd5201Ck0+M6hq//CVcD9cYv2GZPUBFZbLgEW//4IbXr9ota06rjL0J
 eXQ993QNklGpMDxLOj37Mhp/v8smfNw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-533-TK3YSBC1OvymhxW-Xrgfww-1; Fri, 09 Apr 2021 14:11:03 -0400
X-MC-Unique: TK3YSBC1OvymhxW-Xrgfww-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6DF2D18766D0;
 Fri,  9 Apr 2021 18:11:01 +0000 (UTC)
Received: from warthog.procyon.org.uk (ovpn-119-35.rdu2.redhat.com
 [10.10.119.35])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BEDCA10016FD;
 Fri,  9 Apr 2021 18:10:54 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
To: viro@zeniv.linux.org.uk
Date: Fri, 09 Apr 2021 19:10:53 +0100
Message-ID: <161799185391.847742.2598422794034740322.stgit@warthog.procyon.org.uk>
In-Reply-To: <YG+s0iw5o91KQIlW@zeniv-ca.linux.org.uk>
References: <YG+s0iw5o91KQIlW@zeniv-ca.linux.org.uk>
User-Agent: StGit/0.23
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUvb6-0004w7-Jf
Subject: [V9fs-developer] [RFC PATCH 1/2] iov_iter: Remove
 iov_iter_for_each_range()
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

Remove iov_iter_for_each_range() as it's no longer used with the removal of
lustre.

Signed-off-by: David Howells <dhowells@redhat.com>
---

 include/linux/uio.h |    4 ----
 lib/iov_iter.c      |   27 ---------------------------
 2 files changed, 31 deletions(-)

diff --git a/include/linux/uio.h b/include/linux/uio.h
index 5f5ffc45d4aa..221c256304d4 100644
--- a/include/linux/uio.h
+++ b/include/linux/uio.h
@@ -295,8 +295,4 @@ ssize_t __import_iovec(int type, const struct iovec __user *uvec,
 int import_single_range(int type, void __user *buf, size_t len,
 		 struct iovec *iov, struct iov_iter *i);
 
-int iov_iter_for_each_range(struct iov_iter *i, size_t bytes,
-			    int (*f)(struct kvec *vec, void *context),
-			    void *context);
-
 #endif
diff --git a/lib/iov_iter.c b/lib/iov_iter.c
index f808c625c11e..93e9838c128d 100644
--- a/lib/iov_iter.c
+++ b/lib/iov_iter.c
@@ -2094,30 +2094,3 @@ int import_single_range(int rw, void __user *buf, size_t len,
 	return 0;
 }
 EXPORT_SYMBOL(import_single_range);
-
-int iov_iter_for_each_range(struct iov_iter *i, size_t bytes,
-			    int (*f)(struct kvec *vec, void *context),
-			    void *context)
-{
-	struct kvec w;
-	int err = -EINVAL;
-	if (!bytes)
-		return 0;
-
-	iterate_all_kinds(i, bytes, v, -EINVAL, ({
-		w.iov_base = kmap(v.bv_page) + v.bv_offset;
-		w.iov_len = v.bv_len;
-		err = f(&w, context);
-		kunmap(v.bv_page);
-		err;}), ({
-		w = v;
-		err = f(&w, context);}), ({
-		w.iov_base = kmap(v.bv_page) + v.bv_offset;
-		w.iov_len = v.bv_len;
-		err = f(&w, context);
-		kunmap(v.bv_page);
-		err;})
-	)
-	return err;
-}
-EXPORT_SYMBOL(iov_iter_for_each_range);




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
