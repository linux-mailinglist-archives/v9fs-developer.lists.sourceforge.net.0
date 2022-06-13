Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABA25484F0
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jun 2022 13:39:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o0iPS-0002Gy-PY; Mon, 13 Jun 2022 11:39:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gregkh@linuxfoundation.org>) id 1o0iPR-0002Gr-8g
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 11:39:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pw2hHCxeeSzvGK3B3wbSFRlCuqevaPcS54eWU1BY44o=; b=LnzsSGOr+MgP1PWZzqmF4g/7i6
 jRkSJQ50tS354wcZr4EDTYDeUZ3EFkaWRmDuPBipOtu/Dh1fvU5qJQVX4YYwRl3fjdx1xGzi/2d0Z
 /lTFifxIkoyBkkZL/Abv1gyQzG7VCEjPV0K1CRz6UYyvTCieokvbFmcL9Lp5VJL6eAZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Pw2hHCxeeSzvGK3B3wbSFRlCuqevaPcS54eWU1BY44o=; b=SElM0VLyAN7h2TtuaLWRx4tOM8
 Y5zdQogj9WI4+gYl075pmFNNDmwGXKO22l8pPssbOaWHkz5Jnuh2cT1Gtf5L900vKSH5d23N1MQE5
 rOXcKprpj8xNRBx/PD5BII7ycS3TkSsiBCZExkrgxDs9Iisv9pb5y1DHkmIO1UfD18uI=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o0iPH-0008W1-S0
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jun 2022 11:39:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 37EE560EAE;
 Mon, 13 Jun 2022 11:19:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2422FC34114;
 Mon, 13 Jun 2022 11:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1655119186;
 bh=VDEMdKayyI9mHvjQiuo3UP5gP86R8hGnkAqeLT6SQmc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aUphnpHkeiwAoEJ/p8vT5D+KX5PuNdMmyVw1T+WW0YoYkAXoe5UIYO25XR/O4RCFk
 BOZwRoTreLZlx2xJ9Uee8lxlos9w3aqtMCDVsk32al/tAXuasg6YNqOvmA9bgnY9vP
 VEXuy3v+N5DK0qzYmsGcagcnkPOnSi2+1nd5wzQU=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Date: Mon, 13 Jun 2022 12:11:06 +0200
Message-Id: <20220613094927.932137292@linuxfoundation.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220613094922.843438024@linuxfoundation.org>
References: <20220613094922.843438024@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: From: David Howells <dhowells@redhat.com> [ Upstream commit
 6c77676645ad42993e0a8bdb8dafa517851a352a ] The maths at the end of
 iter_xarray_get_pages()
 to calculate the actual size doesn't work under some circumstances, such
 as when it's been asked to extract a partial single page. Various terms of
 the [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o0iPH-0008W1-S0
Subject: [V9fs-developer] [PATCH 5.15 164/247] iov_iter: Fix
 iter_xarray_get_pages{, _alloc}()
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeff Layton <jlayton@kernel.org>, stable@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Gao Xiang <xiang@kernel.org>,
 linux-erofs@lists.ozlabs.org, linux-afs@lists.infradead.org,
 devel@lists.orangefs.org, Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

From: David Howells <dhowells@redhat.com>

[ Upstream commit 6c77676645ad42993e0a8bdb8dafa517851a352a ]

The maths at the end of iter_xarray_get_pages() to calculate the actual
size doesn't work under some circumstances, such as when it's been asked to
extract a partial single page.  Various terms of the equation cancel out
and you end up with actual == offset.  The same issue exists in
iter_xarray_get_pages_alloc().

Fix these to just use min() to select the lesser amount from between the
amount of page content transcribed into the buffer, minus the offset, and
the size limit specified.

This doesn't appear to have caused a problem yet upstream because network
filesystems aren't getting the pages from an xarray iterator, but rather
passing it directly to the socket, which just iterates over it.  Cachefiles
*does* do DIO from one to/from ext4/xfs/btrfs/etc. but it always asks for
whole pages to be written or read.

Fixes: 7ff5062079ef ("iov_iter: Add ITER_XARRAY")
Reported-by: Jeff Layton <jlayton@kernel.org>
Signed-off-by: David Howells <dhowells@redhat.com>
cc: Alexander Viro <viro@zeniv.linux.org.uk>
cc: Dominique Martinet <asmadeus@codewreck.org>
cc: Mike Marshall <hubcap@omnibond.com>
cc: Gao Xiang <xiang@kernel.org>
cc: linux-afs@lists.infradead.org
cc: v9fs-developer@lists.sourceforge.net
cc: devel@lists.orangefs.org
cc: linux-erofs@lists.ozlabs.org
cc: linux-cachefs@redhat.com
cc: linux-fsdevel@vger.kernel.org
Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/iov_iter.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/lib/iov_iter.c b/lib/iov_iter.c
index 6d146f77601d..be07eb24ab2f 100644
--- a/lib/iov_iter.c
+++ b/lib/iov_iter.c
@@ -1436,7 +1436,7 @@ static ssize_t iter_xarray_get_pages(struct iov_iter *i,
 {
 	unsigned nr, offset;
 	pgoff_t index, count;
-	size_t size = maxsize, actual;
+	size_t size = maxsize;
 	loff_t pos;
 
 	if (!size || !maxpages)
@@ -1463,13 +1463,7 @@ static ssize_t iter_xarray_get_pages(struct iov_iter *i,
 	if (nr == 0)
 		return 0;
 
-	actual = PAGE_SIZE * nr;
-	actual -= offset;
-	if (nr == count && size > 0) {
-		unsigned last_offset = (nr > 1) ? 0 : offset;
-		actual -= PAGE_SIZE - (last_offset + size);
-	}
-	return actual;
+	return min(nr * PAGE_SIZE - offset, maxsize);
 }
 
 /* must be done on non-empty ITER_IOVEC one */
@@ -1604,7 +1598,7 @@ static ssize_t iter_xarray_get_pages_alloc(struct iov_iter *i,
 	struct page **p;
 	unsigned nr, offset;
 	pgoff_t index, count;
-	size_t size = maxsize, actual;
+	size_t size = maxsize;
 	loff_t pos;
 
 	if (!size)
@@ -1633,13 +1627,7 @@ static ssize_t iter_xarray_get_pages_alloc(struct iov_iter *i,
 	if (nr == 0)
 		return 0;
 
-	actual = PAGE_SIZE * nr;
-	actual -= offset;
-	if (nr == count && size > 0) {
-		unsigned last_offset = (nr > 1) ? 0 : offset;
-		actual -= PAGE_SIZE - (last_offset + size);
-	}
-	return actual;
+	return min(nr * PAGE_SIZE - offset, maxsize);
 }
 
 ssize_t iov_iter_get_pages_alloc(struct iov_iter *i,
-- 
2.35.1





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
